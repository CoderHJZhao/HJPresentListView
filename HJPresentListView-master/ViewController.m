//
//  ViewController.m
//  HJPresentListView-master
//
//  Created by ZhaoHanjun on 15/12/30.
//  Copyright © 2015年 zhaohanjun. All rights reserved.
//

#import "ViewController.h"
#import "HJPresentListView.h"


// 程序主窗体
#define KeyWindow [UIApplication sharedApplication].keyWindow

@interface ViewController () <HJPresentListViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *presentButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/** 点击事件*/
- (IBAction)presentButtonClicked:(UIButton *)sender
{
    NSArray *titlesArr = @[@"Cancel",@"Red",@"Blue",@"Orange"];
    HJPresentListView *presentListView = [[HJPresentListView alloc] initWithFrame:KeyWindow.bounds Titles:titlesArr ColorStyle:HJOrange];
    presentListView.delegate = self;
    [KeyWindow addSubview:presentListView];
}


#pragma mark HJPresentListViewDelegate

/** 实现代理方法*/
- (void)PresentListView:(UIView *)presentListView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            
            break;
        case 1:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor orangeColor];
            break;
            
        default:
            break;
    }
}
@end
