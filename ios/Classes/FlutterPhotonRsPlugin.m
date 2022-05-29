#import "FlutterPhotonRsPlugin.h"
#if __has_include(<flutter_photon_rs/flutter_photon_rs-Swift.h>)
#import <flutter_photon_rs/flutter_photon_rs-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_photon_rs-Swift.h"
#endif

@implementation FlutterPhotonRsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPhotonRsPlugin registerWithRegistrar:registrar];
}
@end
