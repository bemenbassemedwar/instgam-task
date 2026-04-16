import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:instagram_task/core/cache/secure_cache_helper.dart';

final flutterSecureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);

final cacheHelperProvider = Provider(
  (ref) => SecureCacheHelper(ref.watch(flutterSecureStorageProvider)),
);
