//
//  PQCommonDef.h
//  uTrucker
//
//  Created by qiup on 12-12-27.
//
//

#import <Foundation/Foundation.h>

typedef enum {
	kPQiPhone,
	kPQiPhoneRetinaDisplay,
	kPQiPad,
	kPQiPadRetinaDisplay,
    kPQMac,
}DeviceType;

@interface PQCommonDef : NSObject

+(PQCommonDef*)sharedCommonDef;
@property (nonatomic) NSString* strFileNameMainSceneCcb;
@property (nonatomic) NSString* strFileNameMainGameBackViewCcb;
@property (nonatomic) DeviceType deviceType;

@end
