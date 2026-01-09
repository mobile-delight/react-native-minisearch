#import "Minisearch.h"

@implementation Minisearch
- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(a * b);

    return result;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeMinisearchSpecJSI>(params);
}

+ (NSString *)moduleName
{
  return @"Minisearch";
}

@end
