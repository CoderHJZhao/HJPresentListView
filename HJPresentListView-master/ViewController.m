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
#define KeyWindow [UIApplication sharedApplication].windows.lastObject

@interface ViewController () <HJPresentListViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *presentButton;

@property (nonatomic, strong) HJPresentListView *presentListView;


@end

@implementation ViewController


- (HJPresentListView *)presentListView
{
    if (!_presentListView) {
        NSArray *titlesArr = @[@"Cancel",@"Red",@"Blue",@"Orange"];
        _presentListView = [[HJPresentListView alloc] initWithFrame:KeyWindow.bounds Titles:titlesArr ColorStyle:HJOrange];
        _presentListView.delegate = self;
    }
    return _presentListView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}


/** 点击事件*/
- (IBAction)presentButtonClicked:(UIButton *)sender
{

    [self.presentListView show];

    
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
