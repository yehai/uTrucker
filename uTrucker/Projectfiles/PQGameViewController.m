//
//  PQGameViewController.m
//  uTrucker
//
//  Created by qiup on 12-12-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "PQGameViewController.h"
#import "KTPhysicsController+b2dJson.h"
#import "KTPhysicsDebugViewController+b2dJson.h"

@implementation PQGameViewController

// IMPORTANT: avoid adding/overriding init and dealloc methods!
// To load resources, init other objects, set property values use the appropriate
// callback functions below.

#pragma mark Controller Callbacks

/*
 // Executed after controller is first allocated and initialized.
 // Add subcontrollers, set createModelBlock and loadViewBlock here.
 -(void) initWithDefaults
 {
 }
 */
/*
 // At this point the model is already initialized. Update the controller based on model.
 -(void) load
 {
 }
 */

/*
 // Unload controller (private) resources here. The view and model are unloaded automatically.
 // The controller's unload method is executed after the model's unload method.
 -(void) unload
 {
 }
 */

/*
 // Runs just before the sceneViewController is replaced with a new one.
 // The self.sceneViewController property still points to the previous sceneViewController.
 // Mainly used by game controllers to perform cleanup when the scene is about to change.
 -(void) sceneWillChange
 {
 }
 */

/*
 // Runs just after the previous sceneViewController has been replaced with a new one.
 // The self.sceneViewController property already points to the new sceneViewController.
 -(void) sceneDidChange
 {
 }
 */

#pragma mark View Controller Callbacks

/*
 // Executed before loadView, self.rootNode is still nil at this point.
 -(void) viewWillLoad
 {
 }
 */

/*
// Loads the view. Create a custom view by creating an instance of a CCNode class or subclass,
// then assign this view to self.rootNode. After loadView the loadViewBlock is run and the
// self.rootNode is passed into the block as the rootNode parameter.
// The default implementation simply creates a CCNode instance as rootNode, as seen below.
-(void) loadView
{
    self.rootNode = [CCNode node];
}
*/

// Executed after loadView and after the loadViewBlock was executed. The view hierarchy is
// fully set up by this point. You can make final adjustments to the view here, or update the
// view with model data or vice versa.
-(void) viewDidLoad
{
    float pixelToMeter = 32.0f;
    switch ([PQCommonDef sharedCommonDef].deviceType) {
        case kPQiPadRetinaDisplay:
        case kPQiPad:
            pixelToMeter /= 2;
            break;
        case kPQiPhone:
        case kPQiPhoneRetinaDisplay:
            pixelToMeter /= 4;
            break;
        default:
            break;
    }
    KTPhysicsController* physicsCtl = [KTPhysicsController physicsControllerWithB2dJsonFile:@"trailer.json" parentViewController:self pixelToMeterRatio:pixelToMeter];

    [self addSubController:physicsCtl];
//    KTPhysicsDebugViewController* physicsDebugVC = [KTPhysicsDebugViewController physicsDebugViewControllerWithB2dJsonBox2DController:physicsCtl];
//    [self addSubController:physicsDebugVC];
}

/*
 // Executed when a new scene is being presented and the current scene will soon disappear.
 // If the scene uses a scene transition, then viewWillDisappear is executed when the transition begins.
 -(void) viewWillDisappear
 {
 }
 */

/*
 // Executed when the current scene has been removed from the view. self.rootNode is already nil at this point.
 // Executed just before controller's unload method is executed.
 -(void) viewDidDisappear
 {
 }
 */

#pragma mark Step
// 跟踪视野
-(void) followCenterTo:(KTEntityModel*)model withOffset:(CGPoint)offset
{
}

-(void) updateView
{
    KTEntityModel* entityModel_ = ((KTSpriteViewController*)[self.sceneViewController registeredControllerByName:@"trailer_head"]).entityModel;
	if (entityModel_)
	{
        
        //add this method
        
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        
        //        int x = MAX(entityModel_.position.x, winSize.width / 2);
        //        int y = MAX(entityModel_.position.y, winSize.height / 2);
        //        CGPoint actualPosition = ccp(x, y);
        
        CGPoint centerOfView = ccp(winSize.width/2, winSize.height/2);
        CGPoint viewPoint = ccpSub(centerOfView, entityModel_.position);
        
		CCNode* node = self.rootNode;
		node.position = viewPoint;
	}
}
/*
 // Executed before step and afterStep
 -(void) beforeStep:(KTStepInfo *)stepInfo
 {
 }
 */

/*
 // Executed every frame, unless self.nextStep is set greater than stepInfo.currentStep
 -(void) step:(KTStepInfo *)stepInfo
 {
 // example: this pauses step methods for 200 steps, effentively creating a 200-step interval
 self.nextStep = stepInfo.currentStep + 200;
 }
 */

// Executed after the step method
-(void) afterStep:(KTStepInfo *)stepInfo
{
    [self updateView];
    
}

@end
