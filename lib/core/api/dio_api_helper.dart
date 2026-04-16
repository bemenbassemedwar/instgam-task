import 'package:dio/dio.dart';
import 'package:instagram_task/core/api/api_helper.dart';
import 'package:instagram_task/core/errors/base.dart';


class DioApiHelper implements ApiHelper<Response> {
  final Dio dio;

  DioApiHelper(this.dio);

  Future<Response> _handleRequest(Future<Response> Function() request) async {
    try {
      final response = await request();

      // ✅ Explicitly validate response if `validateRequest` is always true
      _validateResponse(response);
      return response;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      if (e is ServerFailure) {
        rethrow;
      } else {
        throw GeneralFailure(message: e.toString());
      }
    }
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, String>? headers,
    ResponseType? responseType,
  }) async {
    return _handleRequest(
      () => dio.get(
        url,
        options: Options(
          headers: headers,
          responseType: responseType ?? ResponseType.json,
        ),
      ),
    );
  }

  @override
  Future<Response> post(
    String url, {
    dynamic body,
    Map<String, String>? headers,
  }) async {
    return _handleRequest(
      () => dio.post(url, data: body, options: Options(headers: headers)),
    );
  }

  @override
  Future<Response> put(
    String url, {
    dynamic body,
    Map<String, String>? headers,
  }) async {
    return _handleRequest(
      () => dio.put(url, data: body, options: Options(headers: headers)),
    );
  }

  @override
  Future<Response> delete(String url, {Map<String, String>? headers}) async {
    return _handleRequest(
      () => dio.delete(url, options: Options(headers: headers)),
    );
  }

  /// ✅ Validate response manually
  void _validateResponse(Response response) {
    if (response.statusCode == null || response.statusCode! >= 400) {
      final res = response.data;
      throw ServerFailure(
        message:
            res is Map
                ? res['error'] is Map
                    ? (res['error']['message']) ?? res['message']
                    : res['error'] ?? res['message']
                : response.statusMessage,
        statusCode: response.statusCode ?? 0,
      );
    }
  }

  ServerFailure _handleDioError(DioException error) {
    String errorMessage;
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout. Please try again.";
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = "Request timeout. Please try again.";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Response timeout. Please try again.";
        break;
      case DioExceptionType.badResponse:
        errorMessage =
            "Server error: ${error.response?.statusCode} - ${error.response?.statusMessage}";
        break;
      case DioExceptionType.cancel:
        errorMessage = "Request was cancelled.";
        break;
      case DioExceptionType.unknown:
      default:
        errorMessage = "Something went wrong. Please try again.";
    }
    return ServerFailure(
      message: errorMessage,
      statusCode: error.response?.statusCode ?? 0,
    );
  }
}
