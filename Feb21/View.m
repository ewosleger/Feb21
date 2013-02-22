//
//  View.m
//  Feb21
//
//  Created by Edward Wosleger on 2/21/13.
//  Copyright (c) 2013 Edward Wosleger. All rights reserved.
//



#import "View.h"
#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
        unsigned color = 0xFF0000;
		self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	UIFont *font = [UIFont systemFontOfSize: 18.0];
	NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=aapl&f=sl1t1"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    CGSize size = [string sizeWithFont: font];
	CGPoint point = CGPointMake((self.bounds.size.width - size.width) / 2, (self.bounds.size.height -size.height)/2);
	[string drawAtPoint: point withFont: font];
}

@end
