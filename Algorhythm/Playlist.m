//
//  Playlist.m
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/30/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"


@implementation Playlist

// We use an index integer value to reference our dictionaries
// We can use the global constants to retrieve values from the dictionary
-(instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        // we don't use self. when inside an init method
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        // We get the string of the icon image from the dictionary, then convert the string to the UImage after
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
       
        // Let's get the dictionary with the color components out of our music library and pass it to the helper method
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
        _imageView = [[UIImageView alloc] initWithImage:_playlistIcon];
        _imageView.image = _playlistIcon;
        
        // Now that we're done with this init method, we need to add the method declaration to the header file so that we can use it outside the class, specifically in our master view controller
        
    }
    return self;
}

- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    // So we need to convert this from an NSNumber to a CGFloat using a second method called double value
    // We're casting the value that we get from the dictionary as a CGFloat
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    // We can now pass these values to our UIColor constructor and return the resulting object
}

// An NSDictionary only holds values of type NSNumber because NSDictionaries only hold objects, they don't store primitive values.
// So what we're getting back by calling the key 'red' is an NSNumber object.
// CGFloat is just a primitive type of float.

@end
