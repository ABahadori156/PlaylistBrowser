//
//  ViewController.m
//  Algorhythm
//
//  Created by Pasha Bahadori on 7/29/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "PlaylistMasterVC.h"

@interface PlaylistMasterVC ()

@end

@implementation PlaylistMasterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Programatically sets the title and it's state
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    
    [self.aButton setTintColor:[UIColor redColor]];
    
}
- (IBAction)buttonPressed:(UIButton *)sender {
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
