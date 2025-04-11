import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deeplink_x_ios/deeplink_x_ios_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDeeplinkXIos platform = MethodChannelDeeplinkXIos();
  const MethodChannel channel = MethodChannel('deeplink_x_ios');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
