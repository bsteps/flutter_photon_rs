import Flutter
import UIKit

public class SwiftFlutterPhotonRsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_photon_rs", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPhotonRsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func dummyMethodToEnforceBundling() {
    dummy_method_to_enforce_bundling()
  }
}
