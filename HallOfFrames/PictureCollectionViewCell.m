//
//  PictureCollectionViewCell.m
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(void)usePicture:(Picture *)picture{
    self.backgroundColor = picture.frameColor;
    self.imageView.image = picture.image;
}
@end
