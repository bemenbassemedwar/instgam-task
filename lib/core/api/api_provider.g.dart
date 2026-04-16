// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'6e3f5a69939a7434c3c16ba3b6a63d113c0f9d18';

@ProviderFor(apiHelper)
const apiHelperProvider = ApiHelperProvider._();

final class ApiHelperProvider
    extends
        $FunctionalProvider<
          ApiHelper<Response<dynamic>>,
          ApiHelper<Response<dynamic>>,
          ApiHelper<Response<dynamic>>
        >
    with $Provider<ApiHelper<Response<dynamic>>> {
  const ApiHelperProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiHelperProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiHelperHash();

  @$internal
  @override
  $ProviderElement<ApiHelper<Response<dynamic>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApiHelper<Response<dynamic>> create(Ref ref) {
    return apiHelper(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiHelper<Response<dynamic>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiHelper<Response<dynamic>>>(value),
    );
  }
}

String _$apiHelperHash() => r'aaa9219b824790c1d6b4054cb49f9a446fca3863';
