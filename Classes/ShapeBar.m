//
//  ShapeBar.m
//  CrazyPainter
//
//  Created by Fry Constantine on 11/7/09.
//  Copyright 2009 home. All rights reserved.
//

#import "ShapeBar.h"
#import "Shape.h"
#import "PreviewFactory.h"

@implementation ShapeBar

-(id)initWithShapes:(NSArray*)shapes andFrame:(CGRect)frame{
	self = [super init];
	if (self != nil) {
		[self setFrame:frame];
		shapes_ = [shapes retain];
		[self Redraw];
	}
	return self;
}

-(void)RemoveAllSubviews{
	NSArray *arr = [self subviews];
	for (UIImageView *view in arr)
		[view removeFromSuperview];
}

-(void)Redraw{
	[self RemoveAllSubviews];
	int i = 0;
	PreviewFactory *fac = [[PreviewFactory alloc]init];
	for(Shape *shape in shapes_){
		UIImageView *iView = [[UIImageView alloc]initWithImage:[fac GetImageByShape:shape]];
		CGRect rect = iView.frame;
		rect.origin.x = i*rect.size.width;
		[iView setFrame:rect];
		[self addSubview:iView];
		[iView release];
		i++;
	}
}

- (void) dealloc{
	[shapes_ release];
	[super dealloc];
}


@end
