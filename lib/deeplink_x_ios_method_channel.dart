import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deeplink_x_ios_platform_interface.dart';

/// An implementation of [DeeplinkXIosPlatform] that uses method channels.
class MethodChannelDeeplinkXIos extends DeeplinkXIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deeplink_x_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
