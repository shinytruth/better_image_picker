import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'better_image_picker_platform_interface.dart';

/// An implementation of [BetterImagePickerPlatform] that uses method channels.
class MethodChannelBetterImagePicker extends BetterImagePickerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('better_image_picker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
