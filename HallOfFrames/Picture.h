//
//  Picture.h
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Picture : NSObject
-(instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)frameColor;
@property UIImage *image;
@property UIColor *frameColor;

@end
