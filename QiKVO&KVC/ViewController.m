//
//  ViewController.m
//  QiKVO&KVC
//
//  Created by wangdacheng on 2018/11/12.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "ViewController.h"
#import "QiCompany.h"
#import "QiStaff.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self aboutKVC];
    
    QiCompany *company = [[QiCompany alloc] init];
    [company aboutKVO];
}

- (void)aboutKVC {
    
    QiCompany *company=[[QiCompany alloc]init];
    [company setValue:@"QiShare" forKey:@"name"];
    [company setValue:@"北京市朝阳区酒仙桥路6号院" forKey:@"addr"];
    NSLog(@"公司：%@  地址：%@", company.name, [company valueForKey:@"addr"]);
    
    QiStaff *staff = [[QiStaff alloc]init];
    company.staff = staff;
    [company setValue:@"1000119" forKeyPath:@"staff.staffId"];
    [company setValue:@"佩奇" forKeyPath:@"staff.staffName"];
    NSLog(@"员工id：%@  名字：%@", [company valueForKeyPath:@"staff.staffId"], [company valueForKeyPath:@"staff.staffName"]);
}

@end
