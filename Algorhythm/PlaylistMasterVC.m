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
    
//    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        //Next we're going to get an imageView out of the array using this same index
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        // Now we can use the above playlist instance to setup this ImageView
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }
    
    
}

// When we connected our TapGestureRecognizer to an IBAction in our PlaylistMasterVC.m, inside this IBAction we use the method
// [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
// This performs the actions in the prepareForSegue method right below


// the sender below is the TapGestureRecognizer
- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        // We know that the TapGestureRecognizer is going to return an ImageView, so we cast it as UIImageView
        // Now we know exactly which view sent us here
      
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];
          // We can check if this TapGesture playlistImageView that we just received from the TapGesture sender exists in the playlistImageView's array with a containsObject method
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            // If the playlistImageView exists, we'll get the index of that object using another method indexOfObject
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            //below we cast the PlayListDetailVC as the destinationViewController
            PlayListDetailVC *dvc = (PlayListDetailVC *)segue.destinationViewController;
            
            dvc.playlist = [[Playlist alloc] initWithIndex:index];
        }
        
        // Using the playlistImageView instance, we want to know what playlist we have selected and assign that playlist to the playlist property of our PlayListDetailVC
 
    }
}

@end
