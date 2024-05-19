import 'package:flutter_test/flutter_test.dart';
import 'package:pay_with_upi/pay_with_upi.dart';
import 'package:pay_with_upi/pay_with_upi_platform_interface.dart';
import 'package:pay_with_upi/pay_with_upi_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPayWithUpiPlatform
    with MockPlatformInterfaceMixin
    implements PayWithUpiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PayWithUpiPlatform initialPlatform = PayWithUpiPlatform.instance;

  test('$MethodChannelPayWithUpi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPayWithUpi>());
  });

  test('getPlatformVersion', () async {
    PayWithUpi payWithUpiPlugin = PayWithUpi();
    MockPayWithUpiPlatform fakePlatform = MockPayWithUpiPlatform();
    PayWithUpiPlatform.instance = fakePlatform;

    expect(await payWithUpiPlugin.getPlatformVersion(), '42');
  });
}
