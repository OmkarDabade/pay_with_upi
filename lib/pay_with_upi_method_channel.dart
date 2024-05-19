import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pay_with_upi_platform_interface.dart';

/// An implementation of [PayWithUpiPlatform] that uses method channels.
class MethodChannelPayWithUpi extends PayWithUpiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pay_with_upi');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
