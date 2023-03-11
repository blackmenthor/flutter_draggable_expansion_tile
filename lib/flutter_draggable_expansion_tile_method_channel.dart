import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_draggable_expansion_tile_platform_interface.dart';

/// An implementation of [FlutterDraggableExpansionTilePlatform] that uses method channels.
class MethodChannelFlutterDraggableExpansionTile extends FlutterDraggableExpansionTilePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_draggable_expansion_tile');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
