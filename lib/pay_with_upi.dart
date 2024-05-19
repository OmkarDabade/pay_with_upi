
import 'pay_with_upi_platform_interface.dart';

class PayWithUpi {
  Future<String?> getPlatformVersion() {
    return PayWithUpiPlatform.instance.getPlatformVersion();
  }
}
