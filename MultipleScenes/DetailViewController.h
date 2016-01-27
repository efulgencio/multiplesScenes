//
//  DetailViewController.h
//  MultipleScenes
//
//  Created by eduardo fulgencio on 26/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DetailViewControllerDelegate;

@interface DetailViewController : UIViewController
@property(weak,nonatomic) id<DetailViewControllerDelegate> delegate;
@end

@protocol DetailViewControllerDelegate <NSObject>
-(void)userCerrarDetalle:(DetailViewController *) detailVC;
@end


