//
//  HomeViewController.m
//  QBB
//
//  Created by htkj on 17/4/17.
//  Copyright © 2017年 wxy. All rights reserved.
//

#import "HomeViewController.h"
#import "PictureViewController.h"

#define iPhone_Width    [[UIScreen mainScreen] bounds].size.width
#define iPhone_Height   [[UIScreen mainScreen] bounds].size.height

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)photographClick:(id)sender {
    PictureViewController * VC = [[PictureViewController alloc]initWithNibName:@"PictureViewController" bundle:nil];
    VC.recall = ^(UIImage *image){
        _imageView.image = image;
    };
    VC.view.frame = CGRectMake(0, 0, iPhone_Width, iPhone_Height);
    [self addChildViewController:VC];
    [self.view addSubview:VC.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
