//
//  ShapeBar.h
//  CrazyPainter
//
//  Created by Fry Constantine on 11/7/09.
//  Copyright 2009 home. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ShapeBar : UIView {
	NSArray *shapes_;
}

-(id)initWithShapes:(NSArray*)shapes andFrame:(CGRect)frame; 
-(void)Redraw;

@end
