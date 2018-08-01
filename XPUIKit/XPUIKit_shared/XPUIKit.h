//
//  Header.h
//  XPUIKit
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

@import Foundation;

//! Project version number for XPUIKit_macOS.
FOUNDATION_EXPORT double XPUIKit_macOSVersionNumber;

//! Project version string for XPUIKit_macOS.
FOUNDATION_EXPORT const unsigned char XPUIKit_macOSVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <XPUIKit_macOS/PublicHeader.h>
#import <XPUIKit/TestClass.h>
#if TARGET_OS_IPHONE
#import <XPUIKit/XPUIKit_iOS.h>
#else
#import <XPUIKit/XPUIKit_macOS.h>
#endif
