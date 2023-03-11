
import 'flutter_draggable_expansion_tile_platform_interface.dart';

class FlutterDraggableExpansionTile {
  Future<String?> getPlatformVersion() {
    return FlutterDraggableExpansionTilePlatform.instance.getPlatformVersion();
  }
}
