import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_draggable_expansion_tile/flutter_draggable_expansion_tile.dart';
import 'package:flutter_draggable_expansion_tile/flutter_draggable_expansion_tile_platform_interface.dart';
import 'package:flutter_draggable_expansion_tile/flutter_draggable_expansion_tile_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDraggableExpansionTilePlatform
    with MockPlatformInterfaceMixin
    implements FlutterDraggableExpansionTilePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterDraggableExpansionTilePlatform initialPlatform = FlutterDraggableExpansionTilePlatform.instance;

  test('$MethodChannelFlutterDraggableExpansionTile is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDraggableExpansionTile>());
  });

  test('getPlatformVersion', () async {
    FlutterDraggableExpansionTile flutterDraggableExpansionTilePlugin = FlutterDraggableExpansionTile();
    MockFlutterDraggableExpansionTilePlatform fakePlatform = MockFlutterDraggableExpansionTilePlatform();
    FlutterDraggableExpansionTilePlatform.instance = fakePlatform;

    expect(await flutterDraggableExpansionTilePlugin.getPlatformVersion(), '42');
  });
}
