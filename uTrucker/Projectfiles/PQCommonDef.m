//
//  PQCommonDef.m
//  uTrucker
//
//  Created by qiup on 12-12-27.
//
//

#import "PQCommonDef.h"

@implementation PQCommonDef
+(PQCommonDef*)sharedCommonDef
{
    static dispatch_once_t once;
    static PQCommonDef *single;
    dispatch_once(&once, ^ { single = [[PQCommonDef alloc] init]; });
    return single;
}

-(id) init
{
    if (self = [super init]) {
        _strFileNameMainSceneCcb = @"uTruckerMainScene.ccbi";
        _strFileNameMainGameBackViewCcb = @"GameScene.ccbi";
    }
    return self;
}

-(DeviceType) deviceType{
    NSInteger ret=-1;
#ifdef KK_PLATFORM_IOS
    if( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        if( CC_CONTENT_SCALE_FACTOR() == 2 )
            ret = kPQiPadRetinaDisplay;
        else
            ret = kPQiPad;
    }
    else
    {
        if( CC_CONTENT_SCALE_FACTOR() == 2 )
            ret = kPQiPhoneRetinaDisplay;
        else
            ret = kPQiPhone;
    }
#else
    ret = kPQMac;
#endif
    
    return ret;
}
@end
