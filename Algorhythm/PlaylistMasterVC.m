//
//  ViewController.m
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/29/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "PlaylistMasterVC.h"
#import "PlayListDetailVC.h"
#import "Playlist.h"

@interface PlaylistMasterVC ()

@end

@implementation PlaylistMasterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Programatically sets the title and it's state
//    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    

// How to change the text color of a button
//    [self.aButton setTintColor:[UIColor redColor]];
    
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.playlistImageView0.image = playlist.playlistIcon;
    
}


- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        //below we cast the PlayListDetailVC as the destinationViewController
        PlayListDetailVC *dvc = (PlayListDetailVC *)segue.destinationViewController;
        
        dvc.playlist = [[Playlist alloc] initWithIndex:0];
        
    }
}

@end
