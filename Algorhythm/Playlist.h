//
//  Playlist.h
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/30/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// each Playlist will have attributes that we want our class to store
@interface Playlist : NSObject
@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) UIImageView *imageView;

-(instancetype)initWithIndex:(NSUInteger)index;

@end
