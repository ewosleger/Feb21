//
//  Feb21AppDelegate.h
//  Feb21
//
//  Created by Edward Wosleger on 2/21/13.
//  Copyright (c) 2013 Edward Wosleger. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Feb21AppDelegate : UIResponder <UIApplicationDelegate>{
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
