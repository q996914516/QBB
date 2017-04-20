//
//  PictureViewController.m
//  CMS
//
//  Created by coactsoft_mac2 on 16/3/25.
//  Copyright © 2016年 coactsoft_mac1. All rights reserved.
//

#import "PictureViewController.h"
#define iPhone_Width    [[UIScreen mainScreen] bounds].size.width
#define iPhone_Height   [[UIScreen mainScreen] bounds].size.height


@interface PictureViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property UIView *topView;

@end

@implementation PictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated {
    _topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, iPhone_Width, 65)];
    _topView.backgroundColor = [UIColor colorWithRed:1/255.0 green:1/255.0 blue:1/255.0 alpha:0.5];
    [self.view.window addSubview:_topView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)remove:(UIButton *)sender {
    [self.view removeFromSuperview];
    [_topView removeFromSuperview];
}
//取消
- (IBAction)cancelClick:(id)sender {
    [self.view removeFromSuperview];
    [_topView removeFromSuperview];
}
// 从照片库里面选取
- (IBAction)pickerFromPhotoLibL:(id)sender{
    [self.view removeFromSuperview];
    [_topView removeFromSuperview];
    UIImagePickerController *imagepicker = [[UIImagePickerController alloc] init];
    imagepicker.delegate = self;
    imagepicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagepicker.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    imagepicker.allowsEditing = YES;
    [self presentViewController:imagepicker animated:YES completion:nil];
}
// 从相机获取
-(IBAction)pickerFromCameraSource:(id)sender{
    [self.view removeFromSuperview];
    [_topView removeFromSuperview];
    UIImagePickerController * imagepicker = [[UIImagePickerController alloc] init];
    imagepicker.delegate = self;
    imagepicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagepicker.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    imagepicker.allowsEditing = YES;
    [self presentViewController:imagepicker animated:YES completion:nil];
}
//完成选取
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    self.recall(image);

    [picker dismissViewControllerAnimated:YES completion:nil];
}
// 取消选取
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


@end
