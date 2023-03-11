#import "FlutterDraggableExpansionTilePlugin.h"
#if __has_include(<flutter_draggable_expansion_tile/flutter_draggable_expansion_tile-Swift.h>)
#import <flutter_draggable_expansion_tile/flutter_draggable_expansion_tile-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_draggable_expansion_tile-Swift.h"
#endif

@implementation FlutterDraggableExpansionTilePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterDraggableExpansionTilePlugin registerWithRegistrar:registrar];
}
@end
