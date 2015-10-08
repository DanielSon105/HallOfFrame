//
//  Picture.m
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)frameColor {
    self = [super init];
    if (self) {
        self.image = image;
        self.frameColor = frameColor;
    }

    return self;
}

@end
