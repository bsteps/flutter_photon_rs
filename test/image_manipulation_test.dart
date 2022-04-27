import 'package:flutter_test/flutter_test.dart';

void main() {
  // const MethodChannel channel = MethodChannel('image_manipulation');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    // channel.setMockMethodCallHandler((MethodCall methodCall) async {
    //   return '42';
    // });
  });

  tearDown(() {
    // channel.setMockMethodCallHandler(null);
  });

  test('checking', () async {
    // expect(await ImageManipulation.checking(), 'Working');
  });
  // test('getPlatformVersion', () async {
  //   expect(await ImageManipulation.platformVersion, '42');
  // });
}
