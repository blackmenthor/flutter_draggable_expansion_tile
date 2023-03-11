import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_draggable_expansion_tile/flutter_draggable_expansion_tile_method_channel.dart';

void main() {
  MethodChannelFlutterDraggableExpansionTile platform = MethodChannelFlutterDraggableExpansionTile();
  const MethodChannel channel = MethodChannel('flutter_draggable_expansion_tile');

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
