//
//  RMMDetailViewController.h
//  MultipleOContex
//
//  Created by Ricardo Maqueda on 03/07/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMMDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
