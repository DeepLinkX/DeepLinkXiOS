import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deeplink_x_ios_method_channel.dart';

abstract class DeeplinkXIosPlatform extends PlatformInterface {
  /// Constructs a DeeplinkXIosPlatform.
  DeeplinkXIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeplinkXIosPlatform _instance = MethodChannelDeeplinkXIos();

  /// The default instance of [DeeplinkXIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeplinkXIos].
  static DeeplinkXIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeplinkXIosPlatform] when
  /// they register themselves.
  static set instance(DeeplinkXIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
