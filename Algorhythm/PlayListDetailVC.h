//
//  PlayListDetailVC.h
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/29/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <UIKit/UIKit.h>

// This forward declaration below lets the PlayListDetailVC class know about the model Playlist class
@class Playlist;

@interface PlayListDetailVC : UIViewController
@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist3;


@end
