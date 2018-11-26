//
//  QiCompany.m
//  QiKVO&KVC
//
//  Created by wangdacheng on 2018/11/12.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiCompany.h"

@interface QiCompany()

@property (nonatomic, strong) NSString *addr;

@end

@implementation QiCompany

- (void)aboutKVO {

    self.staff = [[QiStaff alloc] init];
    self.staff.staffId = @"1000119";
    self.staff.staffName = @"佩奇";

    [self.staff addObserver:self forKeyPath:@"staffId" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
//    [self.staff addObserver:self forKeyPath:@"staffName" options:NSKeyValueObservingOptionNew context:nil];

    self.staff.staffId = @"1000120";
    self.staff.staffName = @"佩德罗";
}

// 代理 监听值变的方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {

    NSLog(@"keyPath = %@   object=%@   newValue=%@   context=%@", keyPath, object, [change objectForKey:@"new"], context);
}

- (void)dealloc {

    [self.staff removeObserver:self forKeyPath:@"staffId"];
//    [self.staff removeObserver:self forKeyPath:@"staffName"];
}

@end
