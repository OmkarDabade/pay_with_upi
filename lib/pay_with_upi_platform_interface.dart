import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pay_with_upi_method_channel.dart';

abstract class PayWithUpiPlatform extends PlatformInterface {
  /// Constructs a PayWithUpiPlatform.
  PayWithUpiPlatform() : super(token: _token);

  static final Object _token = Object();

  static PayWithUpiPlatform _instance = MethodChannelPayWithUpi();

  /// The default instance of [PayWithUpiPlatform] to use.
  ///
  /// Defaults to [MethodChannelPayWithUpi].
  static PayWithUpiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PayWithUpiPlatform] when
  /// they register themselves.
  static set instance(PayWithUpiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
