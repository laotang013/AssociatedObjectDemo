//
//  AssociateConifg.m
//  AssociatedObjectDemo
//
//  Created by Start on 2017/12/27.
//  Copyright © 2017年 Start. All rights reserved.
//

#import "AssociateConifg.h"
#import <objc/runtime.h>
@implementation AssociateConifg
+(void)setAssociateViewDidLoad:(void(^)(UIViewController *vc))viewDidLoad
{
    objc_setAssociatedObject(self, @selector(associateViewDidLoad), viewDidLoad, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
+(void(^)(UIViewController *vc))associateViewDidLoad
{
   return objc_getAssociatedObject(self, @selector(associateViewDidLoad));
}


+(void)setAssociateWillAppear:(void (^)(UIViewController *vc))viewWillAppear
{
    objc_setAssociatedObject(self, @selector(associateViewWillAppear), viewWillAppear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void (^)(UIViewController *vc))associateViewWillAppear;
{
     return objc_getAssociatedObject(self, @selector(associateViewWillAppear));
}


+(void)setAssociateViewDidAppear:(void (^)(UIViewController *vc))viewDidAppear
{
     objc_setAssociatedObject(self, @selector(associateViewDidAppear), viewDidAppear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void (^)(UIViewController *vc))associateViewDidAppear
{
     return objc_getAssociatedObject(self, @selector(associateViewDidAppear));
}
@end
