//
//  CustomView.h
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

-(void)customView:(id)viewButton didTapButton:(UIButton *)button;

@end


@interface CustomView : UIView

@property (nonatomic, assign)id<CustomViewDelegate> delegate;

@end
