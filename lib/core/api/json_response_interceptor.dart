import 'dart:convert';

import 'package:dio/dio.dart';

class JsonResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Log the response data
    if (response.data is String) {
      try {
        // Attempt to decode the response data as JSON
        response.data = jsonDecode(response.data);
      } catch (e) {
        // If decoding fails, keep the original string
        response.data = response.data;
      }
    } else if (response.data is Map || response.data is List) {
      // If it's already a Map or List, no need to decode
      response.data = response.data;
    }
    super.onResponse(response, handler);
  }
}
