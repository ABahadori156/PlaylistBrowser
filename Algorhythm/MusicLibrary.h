//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/30/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <Foundation/Foundation.h>

// extern makes our constants global so they can be accessed from any class, not just the MusicLibrary class
extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject
@property (strong, nonatomic) NSArray *library;

@end
