import 'package:flutter_test/flutter_test.dart';
import 'package:deeplink_x_ios/deeplink_x_ios.dart';
import 'package:deeplink_x_ios/deeplink_x_ios_platform_interface.dart';
import 'package:deeplink_x_ios/deeplink_x_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeplinkXIosPlatform
    with MockPlatformInterfaceMixin
    implements DeeplinkXIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeplinkXIosPlatform initialPlatform = DeeplinkXIosPlatform.instance;

  test('$MethodChannelDeeplinkXIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeplinkXIos>());
  });

  test('getPlatformVersion', () async {
    DeeplinkXIos deeplinkXIosPlugin = DeeplinkXIos();
    MockDeeplinkXIosPlatform fakePlatform = MockDeeplinkXIosPlatform();
    DeeplinkXIosPlatform.instance = fakePlatform;

    expect(await deeplinkXIosPlugin.getPlatformVersion(), '42');
  });
}
