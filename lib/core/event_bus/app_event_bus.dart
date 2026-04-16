import 'package:event_bus/event_bus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_event_bus.g.dart';

@Riverpod(keepAlive: true)
EventBus appEventBus(Ref _) => EventBus();

class AuthRequiredEvent {} // UI should react to this

class AuthCompletedEvent {
  final String token;
  AuthCompletedEvent(this.token);
}

class AuthCancelledEvent {}

class InvalidateCommonProvidersEvent {
  final bool isDelayed;
  InvalidateCommonProvidersEvent({this.isDelayed = false});
}

class InvalidateOneProviderEvent {
  final ProviderOrFamily provider;
  final bool isDelayed;
  InvalidateOneProviderEvent(this.provider, {this.isDelayed = false});
}

class ForceLogoutEvent {}

class ForceUpdateEvent {}
