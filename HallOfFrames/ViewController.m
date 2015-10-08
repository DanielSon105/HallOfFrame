//
//  ViewController.m
//  HallOfFrames
//
//  Created by Daniel Barrido on 10/7/15.
//  Copyright © 2015 AmarDanDemetriCo. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "Picture.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDelegate,UICollectionViewDataSource,CustomViewDelegate>
@property CustomView *vc;
@property PictureCollectionViewCell *currentCell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image1 = [UIImage imageNamed:@"Beyonce.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"bound.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"dennis_rodman.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"hide_yo.jpg"];
    UIImage *image5 = [UIImage imageNamed:@"jay_cutler.jpg"];

    UIColor *color1 = [UIColor blueColor];
    UIColor *color2 = [UIColor blueColor];
    UIColor *color3 = [UIColor blueColor];
    UIColor *color4 = [UIColor blueColor];
    UIColor *color5 = [UIColor blueColor];


    Picture *picture1 = [[Picture alloc] initWithImage:image1 andFrameColor: color1];
    Picture *picture2 = [[Picture alloc] initWithImage:image2 andFrameColor:color2];
    Picture *picture3 = [[Picture alloc] initWithImage:image3 andFrameColor:color3];
    Picture *picture4 = [[Picture alloc] initWithImage:image4 andFrameColor:color4];
    Picture *picture5 = [[Picture alloc] initWithImage:image5 andFrameColor:color5];

    self.pictures = [NSMutableArray arrayWithObjects:picture1, picture2, picture3, picture4, picture5, nil];

    self.vc = [[[NSBundle mainBundle]loadNibNamed:@"BackgroundColorChangeView" owner:self options:nil] objectAtIndex:0];
    self.vc.delegate = self;

}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    self.currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];
    [self.view addSubview:self.vc];
    
}

-(void)customView:(id)viewButton didTapButton:(UIButton *)button{
    self.currentCell.backgroundView.backgroundColor = button.backgroundColor;
    [self.vc traverseResponderChainForUIViewController];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.pictures.count;
}

- (PictureCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];

    [cell usePicture:[self.pictures objectAtIndex:indexPath.row]];
    return cell;
}



@end
