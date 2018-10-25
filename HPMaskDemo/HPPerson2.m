//
//  HPPerson2.m
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/24.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HPPerson2.h"

@implementation HPPerson2
{
    //定义一个结构体（1个字节大小） 利用位域来存储
    struct DD{
        char old  :1;//最低位(最右边开始) 一个位bit
        char tall :1;
        char fat  :1;
    }_oldTallFat;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"结构体大小：%lu",sizeof(_oldTallFat));
    }
    return self;
}
/*
 1、取值：&运算
 2、设值：|运算
 */

//=============设值运算========

- (void)setOld:(BOOL)old
{
    _oldTallFat.old = old;//BOOL 值 [0,1]
}
- (void)setTall:(BOOL)tall
{
    _oldTallFat.tall = tall;
}
- (void)setFat:(BOOL)fat
{
    _oldTallFat.fat = fat;
}

//================取值==========
- (BOOL)isOld
{
    return !!(_oldTallFat.old);
}
- (BOOL)isFat
{
    return !!(_oldTallFat.fat);
}
- (BOOL)isTall
{
    return !!(_oldTallFat.tall);
}
@end
