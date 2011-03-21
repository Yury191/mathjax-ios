//
//  MathJaxIOSAppDelegate.h
//  MathJaxIOS
//
//  Created by Harish Narayanan on 3/21/11.
//  Copyright 2011 Harish Narayanan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MathJaxIOSViewController;

@interface MathJaxIOSAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MathJaxIOSViewController *viewController;

@end
