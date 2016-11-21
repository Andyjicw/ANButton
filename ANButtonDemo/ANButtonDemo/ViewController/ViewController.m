//
//  ViewController.m
//  ANButtonDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 27/09/2016.
//  Copyright © 2016 andy. All rights reserved.
//

#import "ViewController.h"
#import "ANButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // test github
    
    [self example1];
    [self example2];
    [self example3];
    [self example4];
}
// 默认状态
- (void)example1 {
    ANButton *numberButton = [[ANButton alloc] initWithFrame:CGRectMake(100, 100, 110, 30)];
    // 开启抖动动画
    numberButton.shakeAnimation = true;
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    [self.view addSubview:numberButton];
}
// 边框状态
- (void)example2 {
    ANButton *numberButton = [[ANButton alloc] initWithFrame:CGRectMake(100, 160, 200, 30)];
    // 设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    [self.view addSubview:numberButton];
}
// 自定义加减按钮的文字
- (void)example3 {
    ANButton *numberButton = [[ANButton alloc] initWithFrame:CGRectMake(100, 220, 150, 44)];
    numberButton.shakeAnimation = true;
    // 设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    // 设置加减按钮文字
    [numberButton setTitleWithIncreaseTitle:@"加" decreaseTitle:@"减"];
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    [self.view addSubview:numberButton];
}
// 自定义加减按钮背景图片
- (void)example4 {
    ANButton *numberButton = [[ANButton alloc] initWithFrame:CGRectMake(100, 300, 100, 30)];
    numberButton.shakeAnimation = true;
    numberButton.backgroundColor = [UIColor clearColor];
    [numberButton setImageWithIncreaseImage:[UIImage imageNamed:@"timeline_relationship_icon_addattention"]
                              decreaseImage:[UIImage imageNamed:@"decrease_highlight"]];
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    [self.view addSubview:numberButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:true];
}

@end
