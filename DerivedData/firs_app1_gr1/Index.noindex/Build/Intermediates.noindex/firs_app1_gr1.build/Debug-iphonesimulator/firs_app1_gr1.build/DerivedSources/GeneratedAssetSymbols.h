#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "girl" asset catalog image resource.
static NSString * const ACImageNameGirl AC_SWIFT_PRIVATE = @"girl";

/// The "gon" asset catalog image resource.
static NSString * const ACImageNameGon AC_SWIFT_PRIVATE = @"gon";

/// The "samurai" asset catalog image resource.
static NSString * const ACImageNameSamurai AC_SWIFT_PRIVATE = @"samurai";

#undef AC_SWIFT_PRIVATE
