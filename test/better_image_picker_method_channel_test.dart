import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:better_image_picker/better_image_picker_method_channel.dart';

void main() {
  MethodChannelBetterImagePicker platform = MethodChannelBetterImagePicker();
  const MethodChannel channel = MethodChannel('better_image_picker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
