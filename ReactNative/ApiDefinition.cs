using System;

using UIKit;
using Foundation;
using ObjCRuntime;
using CoreGraphics;

namespace ReactNative
{
	[BaseType(typeof(UIView))]
	interface RCTRootView {
		[ExportAttribute("initWithBundleURL:moduleName:launchOptions:")]
		IntPtr Constructor(NSUrl bundleUrl, NSString moduleName, NSDictionary launchOptions);
	}
}
