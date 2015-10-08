//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"

@interface PictureCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property Picture *picture;

-(void)usePicture:(Picture *)picture;

@end
