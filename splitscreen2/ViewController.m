//
//  ViewController.m
//  splitscreen2
//
//  Created by Davy Chiu on 2013-02-01.
//  Copyright (c) 2013 Davy Chiu. All rights reserved.
//

#import "ViewController.h"
#import "TopCell.h"
#import "BottomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    if (view.tag == 0) {
        return 1;
    } else {
        return 9;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (cv.tag == 0) {
        TopCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"TopCell" forIndexPath:indexPath];
    
        cell.imageView.image = [UIImage imageNamed:[[NSString stringWithFormat:@"female%d",indexPath.row]stringByAppendingString:@".png"]];
    
        return cell;
    } else {
        BottomCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"BottomCell" forIndexPath:indexPath];
        
        cell.imageView.image = [UIImage imageNamed:[[NSString stringWithFormat:@"female%d",indexPath.row]stringByAppendingString:@".png"]];
        
        return cell;
    }
}


@end
