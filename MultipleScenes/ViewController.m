//
//  ViewController.m
//  MultipleScenes
//
//  Created by eduardo fulgencio on 26/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <DetailViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pulsado:(id)sender {
    
    // Para acceder por código
   //  [self performSegueWithIdentifier:@"nombreSegue" sender:self];
    DetailViewController *detall = [self.storyboard instantiateViewControllerWithIdentifier:@"detailVCid"];
    detall.delegate = self;
    
    [self presentViewController:detall animated:YES completion:nil];
    
}

// En el caso de definir
// un Segue en StoryBoard
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailViewController *detall = segue.destinationViewController;
    detall.delegate = self;
}

- (void)userCerrarDetalle:(DetailViewController *)detailVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
