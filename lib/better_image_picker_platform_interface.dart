import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'better_image_picker_method_channel.dart';

abstract class BetterImagePickerPlatform extends PlatformInterface {
  /// Constructs a BetterImagePickerPlatform.
  BetterImagePickerPlatform() : super(token: _token);

  static final Object _token = Object();

  static BetterImagePickerPlatform _instance = MethodChannelBetterImagePicker();

  /// The default instance of [BetterImagePickerPlatform] to use.
  ///
  /// Defaults to [MethodChannelBetterImagePicker].
  static BetterImagePickerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BetterImagePickerPlatform] when
  /// they register themselves.
  static set instance(BetterImagePickerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
