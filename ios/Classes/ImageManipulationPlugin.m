#import "ImageManipulationPlugin.h"
#if __has_include(<image_manipulation/image_manipulation-Swift.h>)
#import <image_manipulation/image_manipulation-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "image_manipulation-Swift.h"
#endif

@implementation ImageManipulationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftImageManipulationPlugin registerWithRegistrar:registrar];
}
@end
