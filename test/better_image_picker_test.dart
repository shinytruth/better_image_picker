import 'package:flutter_test/flutter_test.dart';
import 'package:better_image_picker/better_image_picker.dart';
import 'package:better_image_picker/better_image_picker_platform_interface.dart';
import 'package:better_image_picker/better_image_picker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBetterImagePickerPlatform
    with MockPlatformInterfaceMixin
    implements BetterImagePickerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BetterImagePickerPlatform initialPlatform = BetterImagePickerPlatform.instance;

  test('$MethodChannelBetterImagePicker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBetterImagePicker>());
  });

  test('getPlatformVersion', () async {
    BetterImagePicker betterImagePickerPlugin = BetterImagePicker();
    MockBetterImagePickerPlatform fakePlatform = MockBetterImagePickerPlatform();
    BetterImagePickerPlatform.instance = fakePlatform;

    expect(await betterImagePickerPlugin.getPlatformVersion(), '42');
  });
}
