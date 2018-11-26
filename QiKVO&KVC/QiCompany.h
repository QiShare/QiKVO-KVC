//
//  QiCompany.h
//  QiKVO&KVC
//
//  Created by wangdacheng on 2018/11/12.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QiStaff.h"

@interface QiCompany : NSObject

// 公司名字
@property (nonatomic, strong) NSString *name;
// 员工变量
@property (nonatomic, strong) QiStaff *staff;

- (void)aboutKVO;

@end

