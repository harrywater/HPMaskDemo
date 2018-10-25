//
//  HPPerson3.m
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/25.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HPPerson3.h"

#define oldMask (1<<0)
#define tallMask (1<<1)
#define fatMask (1<<2)
//Mask...

@implementation HPPerson3
{
    //定义一个共用体体（1个字节大小） 利用位域来存储
    union{
        char bits;
        //表示说明作用。增加可读性
        struct DD{
            char old  :1;//oldMask最低位(最右边开始) 一个位bit
            char tall :1;//tallMask
            char fat  :1;//fatMask
        };
    }_oldTallFat;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"union体大小：%lu",sizeof(_oldTallFat));
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
    if (old) {
        _oldTallFat.bits |= oldMask;
    }else{
        _oldTallFat.bits &= (~oldMask);
    }
}
- (void)setTall:(BOOL)tall
{
    if (tall) {
        _oldTallFat.bits |= tallMask;
    }else{
        _oldTallFat.bits &= (~tallMask);
    }
}
- (void)setFat:(BOOL)fat
{
    if (fat) {
        _oldTallFat.bits |= fatMask;
    }else{
        _oldTallFat.bits &= (~fatMask);
    }
}

//================取值==========
//0假，非0真（-1也是真）
- (BOOL)isOld
{
    return !!(_oldTallFat.bits&oldMask);
}
- (BOOL)isFat
{
    return !!(_oldTallFat.bits&fatMask);
}
- (BOOL)isTall
{
    return !!(_oldTallFat.bits&tallMask);
}
@end
