//
//  main.m
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/24.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HPPerson1.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1、===========字节bits存储状态码应用==========
        HPPerson1* person1 = [HPPerson1 new];
        [person1 setOld:NO];
        [person1 setFat:YES];
        [person1 setTall:NO];
        NSLog(@"old:%d,fat:%d,tall:%d",person1.isOld,person1.isFat,person1.isTall);
        
        //1、===========字节bits存储状态码应用==========
        
        
    }
    return 0;
}
