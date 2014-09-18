//
//  ViewController.m
//  BasicMenu
//
//  Created by 島崎　恵美 on 2014/09/18.
//  Copyright (c) 2014年 Mike Enriquez. All rights reserved.
//

#import "ViewController.h"

@interface UIViewController ()

@end

@implementation ViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //画像の生成
    UIImage *image = [UIImage imageNamed:@"Image-1-1-1"];
    //UIImageViewに生成した画像を乗せる
    _iv = [[UIImageView alloc] initWithImage:image];
    //背景追加
    _iv.backgroundColor = [UIColor whiteColor];
    //UIImageViewの一とサイズを指定
    [_iv setFrame:CGRectMake(50.0, 50.0, image.size.width, image.size.height)];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 画面に指を一本以上タッチしたときに実行されるメソッド
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //シングルタッチのときの実行
    
    //タッチイベントを取り出す
    UITouch *touch = [touches anyObject];
    //タッチイベントから座標を取り出す
    CGPoint point = [touch locationInView:self.view];
    //画像の(UIImageView)の中心座標とタッチイベントから取得した座標を同期
    _iv.center = point;
    
    
    //ビューに表示
    [self.view addSubview:_iv];
    
    
    
    //CGPoint location = [touch locationInView:self];
    //座標をNSLogに表記
    NSLog(@"x:%f y:%f", point.x, point.y);
    
    //[[event allTouches] view];
    
}

// 画面に触れている指が一本以上移動したときに実行されるメソッド
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesMoved:withEvent:)", [touches count]);
}

// 指を一本以上画面から離したときに実行されるメソッド
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesEnded:withEvent:)", [touches count]);
}

// システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesCancelled:withEvent:)", [touches count]);
}

- (void)splitViewController:(UISplitViewController*)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem*)barButtonItem
       forPopoverController:(UIPopoverController*)pc {
    
    
}


@end
