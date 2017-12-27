//
//  AssociateConifg.h
//  AssociatedObjectDemo
//
//  Created by Start on 2017/12/27.
//  Copyright © 2017年 Start. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/*
 *  全局配置VC中的viewDidLoad viewWillAppear  viewDidAppear调用时，所需要做执行的特定的代码，通过block来
 *  配置您想执行的代码
 */
@interface AssociateConifg : NSObject
+(void)setAssociateViewDidLoad:(void(^)(UIViewController *vc))viewDidLoad;
+(void(^)(UIViewController *vc))associateViewDidLoad;

+(void)setAssociateWillAppear:(void (^)(UIViewController *vc))viewWillAppear;
+(void (^)(UIViewController *vc))associateViewWillAppear;

+(void)setAssociateViewDidAppear:(void (^)(UIViewController *vc))viewDidAppear;
+(void (^)(UIViewController *vc))associateViewDidAppear;
@end

/*
 #import <objc/runtime.h>
 
 static void *EOCMyAlertViewKey = "EOCMyAlertViewKey";
 
 - (void)askUserAQuestion {
 UIAlertView *alert = [[UIAlertViewalloc]
 initWithTitle:@"Question"
 message:@"What do you want to do?"
 delegate:self
 cancelButtonTitle:@"Cancel"
 otherButtonTitles:@"Continue", nil];
 
 void (^block)(NSInteger) = ^(NSInteger buttonIndex){
 if (buttonIndex == 0) {
 [self doCancel];
 } else {
 [self doContinue];
 }
 };
 
 objc_setAssociatedObject(alert,
 EOCMyAlertViewKey,
 block,
 O                              BJC_ASSOCIATION_COPY);
 
 [alert show];
 }
 
 // UIAlertViewDelegate protocol method
 - (void)alertView:(UIAlertView*)alertView
 clickedButtonAtIndex:(NSInteger)buttonIndex
 {
 void (^block)(NSInteger) =
 objc_getAssociatedObject(alertView, EOCMyAlertViewKey);
 block(buttonIndex);
 }
 
 作者：VV木公子
 链接：https://www.jianshu.com/p/bf51e9d52188
 來源：简书
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */



























