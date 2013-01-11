/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "AppDelegate.h"
#import "PQMainSceneViewController.h"
@implementation AppDelegate

-(void) initializationComplete
{
	// allow scenes to continuously update during a transition
	self.gameController.pauseScenesDuringTransition = NO;
    //
    PQMainSceneViewController* vc = [PQMainSceneViewController controller];
	[self.gameController presentSceneViewController:vc];

	NSLog(@"----- Dumping Object Graph -------");
	NSLog(@"%@", [self.gameController.debugController objectGraph]);

}

#ifdef KK_PLATFORM_IOS
-(BOOL) application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
#endif
-(id) alternateView
{
	return nil;
}

@end
