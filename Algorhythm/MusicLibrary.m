//
//  MusicLibrary.m
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/30/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "MusicLibrary.h"

@implementation MusicLibrary

// with these dictionaries we're using a constant string as the key for the key:value pair
// I did these constants because I didn't want to constantly retype the keys and to adhere to DRY
NSString *const kTitle = @"title";
NSString *const kDescription = @"description";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";
NSString *const kBackgroundColor = @"backgroundColor";
NSString *const kArtists = @"artists";


- (instancetype)init {
    self = [super init];
    if (self) {
        //setup the dictionary
        NSDictionary *caramelDelight = @{@"flavor": @"caramel"};
        // Library is assigned an array using literal syntax
        // Inside the array we create dictionaries, using literal syntax, containing playlist instances
        
        _library = @[@{kTitle: @"Rise and Shine",
                           kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                           kIcon: @"coffee.pdf",
                           kLargeIcon: @"coffee_large.pdf",
                           // backgroundColor contains a second dictionary using the dictionary literal syntax, which is used to create a background color for our cover images
                           kBackgroundColor: @{@"red": @255.0, @"green": @204.0, @"blue": @51.0, @"alpha": @1.0},
                           // artists is an array of strings
                           kArtists: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                           },
                         
                         @{kTitle: @"Runner's Rampage",
                           kDescription: @"Hit the track hard and get in beast mode with everything from dance tracks to classic hip hop. All the right fuel to motivate you to push your limits.",
                           kIcon: @"running.pdf",
                           kLargeIcon: @"running_large.pdf",
                           kBackgroundColor: @{@"red": @255.0, @"green": @102.0, @"blue": @51.0, @"alpha": @1.0},
                           kArtists: @[@"Avicii", @"Calvin Harris", @"Pitbull", @"Iggy Azalea", @"Rita Ora", @"Drake", @"Lil Wayne"]
                           },
                         
                         @{kTitle: @"Joy Ride",
                           kDescription: @"Let this electric playlist take you wherever your heart desires. Cruise along in style to these energetic beats.",
                           kIcon: @"helmet.pdf",
                           kLargeIcon: @"helmet_large.pdf",
                           kBackgroundColor: @{@"red": @153.0, @"green": @102.0, @"blue": @204.0, @"alpha": @1.0},
                           kArtists: @[@"Afrojack", @"Kid Cudi", @"Daft Punk", @"kIcona Pop", @"Gesaffelstien", @"Roksnoix", @"deadmau5"]
                           },
                         
                         @{kTitle: @"In The Zone",
                           kDescription: @"Keep calm and focus. Shut out the noise around you and grind away with some mind sharpening instrumental tunes.",
                           kIcon: @"laptop.pdf",
                           kLargeIcon: @"laptop_large.pdf",
                           kBackgroundColor: @{@"red": @51.0, @"green": @153.0, @"blue": @204.0, @"alpha": @1.0},
                           kArtists: @[@"Gucci Mane", @"Drake", @"Future", @"Desiigner", @"Chief Keef", @"Kanye West", @"Wiz Khalifa"]
                           },
                         @{kTitle: @"Button Masher",
                           kDescription: @"Turn up the speakers and get out of my way! The ultimate gaming playlist to get you hyped up and ready for the crazy fun that’s about to happen.",
                           kIcon: @"joystick.pdf",
                           kLargeIcon: @"joystick_large.pdf",
                           kBackgroundColor: @{@"red": @51.0, @"green": @204.0, @"blue": @102.0, @"alpha": @1.0},
                           kArtists: @[@"Skrillex", @"The Game", @"2 Chainz", @"Jay Z", @"T.I.", @"Rihanna", @"Eminem"]
                           },
                         @{kTitle: @"Futbal Remix",
                           kDescription: @"There’s nothing like the world’s game. Kick around the field with this eclectic playlist from around the world. Futbal for life.",
                           kIcon: @"ball.pdf",
                           kLargeIcon: @"ball_large.pdf",
                           kBackgroundColor: @{@"red": @255.0, @"green": @102.0, @"blue": @153.0, @"alpha": @1.0},
                           kArtists: @[@"Shakira", @"Santana", @"Wyclef Jean", @"Aloe Blacc", @"Pitbull", @"Enrique Iglesias", @"Ricky Martin"]
                           
                           }];
        // We have 6 dictionaries in our Library array to represent our entire music library
        // below we add the caramelDelight dictionary to our library array
//        self.library = @[caramelDelight];
    }
    return self;
}

@end
