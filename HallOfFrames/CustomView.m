//
//  CustomView.m
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)onButtonTapped:(UIButton *)sender {
    [self.delegate customView:self didTapButton:sender];
}



@end
