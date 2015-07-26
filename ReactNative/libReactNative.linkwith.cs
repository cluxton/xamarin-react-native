using System;
using ObjCRuntime;

[assembly: LinkWith (
	"libReactNative.a", 
	LinkTarget.ArmV7 | LinkTarget.Arm64 | LinkTarget.Simulator | LinkTarget.Simulator64, 
	Frameworks = "JavaScriptCore QuartzCore",
	SmartLink = true, ForceLoad = true)]
