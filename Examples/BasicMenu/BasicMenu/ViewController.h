//
//  ViewController.h
//  BasicMenu
//
//  Created by 島崎　恵美 on 2014/09/18.
//  Copyright (c) 2014年 Mike Enriquez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "ViewControllor.m"


@interface ViewController : UIViewController<UIPopoverControllerDelegate,UISplitViewControllerDelegate>{
    UIImageView *_iv;
    CGPoint touchPoint;
    
    CGFloat red;
    CGFloat green;
    CGFloat blue;

}
@property UIImage *picture;
@property (nonatomic) CGFloat red;
@property (nonatomic) CGFloat green;
@property (nonatomic) CGFloat blue;

@end
