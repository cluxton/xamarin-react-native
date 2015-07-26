using System;
using ObjCRuntime;

[assembly: LinkWith ("libReactNative.a", LinkTarget.ArmV7 | LinkTarget.Simulator | LinkTarget.Simulator64, SmartLink = true, ForceLoad = true)]
