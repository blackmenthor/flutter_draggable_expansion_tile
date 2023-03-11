#include "include/flutter_draggable_expansion_tile/flutter_draggable_expansion_tile_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_draggable_expansion_tile_plugin.h"

void FlutterDraggableExpansionTilePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_draggable_expansion_tile::FlutterDraggableExpansionTilePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
