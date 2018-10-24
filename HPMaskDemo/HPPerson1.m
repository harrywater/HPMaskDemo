//
//  HPPerson1.m
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/24.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HPPerson1.h"

#define oldMask (1<<0)
#define tallMask (1<<1)
#define fatMask (1<<2)

@implementation HPPerson1
{
    char _oldTallFat; //一个字节存放
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _oldTallFat = 0b00000000;//初始化
    }
    return self;
}
/*
 1、取值：&运算
 2、设值：|运算
 */

//=============设值运算========
- (void)setTall:(BOOL)tall
{
    if (tall) {
        _oldTallFat |= tallMask;
    }else{
        _oldTallFat &= (~tallMask);
    }
}
- (void)setFat:(BOOL)fat
{
    if (fat) {
        _oldTallFat |= fatMask;
    }else{
        _oldTallFat &= (~fatMask);
    }
}
- (void)setOld:(BOOL)old
{
    if (old) {
        _oldTallFat |= oldMask;
    }else{
        _oldTallFat &= (~oldMask);
    }
}

//================取值==========
- (BOOL)isOld
{
    return !!(_oldTallFat&oldMask);
}
- (BOOL)isFat
{
    return !!(_oldTallFat&fatMask);
}
- (BOOL)isTall
{
    return !!(_oldTallFat&tallMask);
}
@end
