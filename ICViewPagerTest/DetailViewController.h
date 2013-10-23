//
//  DetailViewController.h
//  ICViewPagerTest
//
//  Created by Paul Nicholson on 10/22/13.
//  Copyright (c) 2013 Refactored Tech, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
