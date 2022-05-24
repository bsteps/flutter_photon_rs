#import "FlutterPhotonPlugin.h"
#if __has_include(<flutter_photon/flutter_photon-Swift.h>)
#import <flutter_photon/flutter_photon-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_photon-Swift.h"
#endif

@implementation FlutterPhotonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPhotonPlugin registerWithRegistrar:registrar];
}
@end
