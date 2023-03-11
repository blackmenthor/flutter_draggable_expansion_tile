import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_draggable_expansion_tile_method_channel.dart';

abstract class FlutterDraggableExpansionTilePlatform extends PlatformInterface {
  /// Constructs a FlutterDraggableExpansionTilePlatform.
  FlutterDraggableExpansionTilePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDraggableExpansionTilePlatform _instance = MethodChannelFlutterDraggableExpansionTile();

  /// The default instance of [FlutterDraggableExpansionTilePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDraggableExpansionTile].
  static FlutterDraggableExpansionTilePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDraggableExpansionTilePlatform] when
  /// they register themselves.
  static set instance(FlutterDraggableExpansionTilePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
