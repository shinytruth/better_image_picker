
import 'better_image_picker_platform_interface.dart';

class BetterImagePicker {
  Future<String?> getPlatformVersion() {
    return BetterImagePickerPlatform.instance.getPlatformVersion();
  }
}
