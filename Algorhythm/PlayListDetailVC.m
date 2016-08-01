//
//  PlayListDetailVC.m
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/29/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "PlayListDetailVC.h"
#import "Playlist.h"

@interface PlayListDetailVC ()

@end

@implementation PlayListDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // We do the if statement clause to make sure our playlist instance isn't nil
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        self.playlistArtist3.text = self.playlist.playlistArtists[3];
        
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
