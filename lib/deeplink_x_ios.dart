
import 'deeplink_x_ios_platform_interface.dart';

class DeeplinkXIos {
  Future<String?> getPlatformVersion() {
    return DeeplinkXIosPlatform.instance.getPlatformVersion();
  }
}
