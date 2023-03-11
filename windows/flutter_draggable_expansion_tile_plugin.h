#ifndef FLUTTER_PLUGIN_FLUTTER_DRAGGABLE_EXPANSION_TILE_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_DRAGGABLE_EXPANSION_TILE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_draggable_expansion_tile {

class FlutterDraggableExpansionTilePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterDraggableExpansionTilePlugin();

  virtual ~FlutterDraggableExpansionTilePlugin();

  // Disallow copy and assign.
  FlutterDraggableExpansionTilePlugin(const FlutterDraggableExpansionTilePlugin&) = delete;
  FlutterDraggableExpansionTilePlugin& operator=(const FlutterDraggableExpansionTilePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_draggable_expansion_tile

#endif  // FLUTTER_PLUGIN_FLUTTER_DRAGGABLE_EXPANSION_TILE_PLUGIN_H_
