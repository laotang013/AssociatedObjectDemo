//
//  AssociateBaseViewController.m
//  AssociatedObjectDemo
//
//  Created by Start on 2017/12/27.
//  Copyright © 2017年 Start. All rights reserved.
//

#import "AssociateBaseViewController.h"
#import "AssociateConifg.h"
@interface AssociateBaseViewController ()

@end

@implementation AssociateBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    !AssociateConifg.associateViewDidLoad?:[AssociateConifg associateViewDidLoad](self);
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
