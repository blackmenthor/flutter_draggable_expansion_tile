import Flutter
import UIKit

public class SwiftFlutterDraggableExpansionTilePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_draggable_expansion_tile", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterDraggableExpansionTilePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
