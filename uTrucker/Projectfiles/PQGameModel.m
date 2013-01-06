//
//  PQGameModel.m
//  uTrucker
//
//  Created by qiup on 12-12-31.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "PQGameModel.h"


@implementation PQGameModel

#pragma mark Load/Unload

/* 
// Executed when model is first initialized. Is NOT executed when model is loaded from archive!
-(void) initWithDefaults
{
}
*/

/*
// It is good practice to use a const string for archive keys, to avoid possible typos when archiving and loading.
NSString* const kCodingKeyForBoolProperty = @"aBoolProperty";

// Executed when model is loaded from archive. Use this to load model data from an archive.
-(void) initWithArchive:(NSKeyedUnarchiver*)aDecoder archiveVersion:(unsigned int)archiveVersion
{
	// how to decode a BOOL property
	self.aBoolProperty = [aDecoder decodeBoolForKey:kCodingKeyForBoolProperty];
	
	// example: support loading of older archive versions
	if (archiveVersion < 5)
	{
		// set sensible default for previously non-archived data
		self.aBoolProperty = YES;
	}
}

// Executed when model is being saved (encoded) to an archive. Use this to save your model's data.
-(void) archiveWithCoder:(NSKeyedArchiver*)aCoder
{
	// how to encode a BOOL property
	[aCoder encodeBool:self.aBoolProperty forKey:kCodingKeyForBoolProperty];
}
*/

/* 
// Executed after model has been initialized or loaded from archive. Use this for common setup code.
-(void) load
{
}
*/

/* 
// Unload private resources of the model. 
// The model's unload method is executed before the controller's unload method.
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

#pragma mark Step

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

/*
// Executed after the step method
-(void) afterStep:(KTStepInfo *)stepInfo
{
}
*/

@end
