import Flutter
import UIKit

public class SwiftFlutterPhotonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_photon", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPhotonPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func dummyMethodToEnforceBundling() {
    dummy_method_to_enforce_bundling()
  }
}
