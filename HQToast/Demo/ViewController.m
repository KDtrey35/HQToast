//
//  ViewController.m
//  HQToast
//
//  Created by HQ on 2018/4/23.
//  Copyright © 2018年 HQ. All rights reserved.
//

#import "ViewController.h"
#import "HQToast.h"

@interface ViewController ()

@end

@implementation ViewController
- (UIButton *)toastButton
{
    if (_toastButton == nil) {
        CGRect rect = CGRectMake(self.view.frame.size.width/2-40, self.view.frame.size.height/2+210, 80, 26);
        _toastButton = [[UIButton alloc] initWithFrame:rect];
        [_toastButton addTarget:self action:@selector(clickToastBtn) forControlEvents:UIControlEventTouchUpInside];
        [_toastButton setTitle:@"点击提示" forState:UIControlStateNormal];
        [_toastButton setBackgroundColor:[UIColor grayColor]];
        [_toastButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _toastButton.titleLabel.font = [UIFont systemFontOfSize:14];
    }
    
    return _toastButton;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.toastButton];
    
}

- (void)clickToastBtn
{
    // 调用方式一
    [[HQToast shareInstance] showText:@"保存成功!"];
    
//    // 调用方式二
//    [[HQToast shareInstance] showTextDuration:1.0 CornerRadiusNum:8.0 TextBackColor:[UIColor greenColor] TextFont:[UIFont systemFontOfSize:14] TextColor:[UIColor redColor] TextFrame:CGPointMake(0, 0) Text:@"这是一段文字提示!"];
}



@end
