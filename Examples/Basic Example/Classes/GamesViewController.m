//
//  GamesViewController.m
//  Basic Example
//
//  Created by Nik Macintosh on 2013-01-24.
//  Copyright (c) 2013 GameCall Social Sports. All rights reserved.
//

#import "GamesViewController.h"
#import "UIColor+Random.h"
#import "GCCardCollectionViewCell.h"

@implementation GamesViewController

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 4;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return section + 1;
}

- (GCCardCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GCCardCollectionViewCell *cell = (GCCardCollectionViewCell *)[super collectionView:collectionView cellForItemAtIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor randomTexture];
    
    return cell;
}

#pragma mark - NSObject

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.title = NSLocalizedString(@"Games", nil);
    
    return self;
}

@end
