--[[
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
--]]


--[[
		* Need help with the KKStartupConfig settings?
		* ------ http://www.kobold2d.com/x/ygMO ------
--]]


local config =
{
	KKStartupConfig = 
	{
		-- load first scene from a class with this name, or from a Lua script with this name with .lua appended
		FirstSceneClassName = "HelloWorldLayer",

		MaxFrameRate = 60,
		DisplayFPS = YES,

		EnableUserInteraction = YES,
		EnableMultiTouch = NO,

		-- Render settings
		DefaultTexturePixelFormat = TexturePixelFormat.PVRTC2,
		GLViewColorFormat = GLViewColorFormat.RGB565,
		GLViewDepthFormat = GLViewDepthFormat.DepthNone,
		GLViewMultiSampling = NO,
		GLViewNumberOfSamples = 0,

		Enable2DProjection = NO,
		EnableRetinaDisplaySupport = YES,
		EnableGLViewNodeHitTesting = NO,
		EnableStatusBar = NO,

		-- Orientation & Autorotation
		-- Kobold2D uses the supported orientations from the Target's Summary pane: http://cl.ly/2l132Z2f463H2O3r0M1O
		-- (same as Info.plist key UISupportedInterfaceOrientations aka "Supported interface orientations")
	
		-- Ad setup
		EnableAdBanner = NO,
		PlaceBannerOnBottom = YES,
		LoadOnlyPortraitBanners = NO,
		LoadOnlyLandscapeBanners = NO,
		AdProviders = "iAd",

		-- Mac OS specific settings
		AutoScale = YES,
		AcceptsMouseMovedEvents = YES,
		EnableFullScreen = YES,
	},
}

return config
