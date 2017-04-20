//
//  PictureViewController.h
//  CMS
//
//  Created by coactsoft_mac2 on 16/3/25.
//  Copyright © 2016年 coactsoft_mac1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureViewController : UIViewController

@property (copy)void (^recall)(UIImage *image);

@end
