import 'package:instagram_task/core/api/api_provider.dart';
import 'package:instagram_task/features/infrastructure/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'infrastructure_providers.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.watch(apiHelperProvider));
}
 