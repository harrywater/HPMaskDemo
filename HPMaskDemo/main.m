//
//  main.m
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/24.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HPPerson1.h"
#import "HPPerson2.h"
#import "HPPerson3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1、===========字节bits存储状态码应用==========
//        HPPerson1* person1 = [HPPerson1 new];
//        [person1 setOld:NO];
//        [person1 setFat:YES];
//        [person1 setTall:NO];
//        NSLog(@"old:%d,fat:%d,tall:%d",person1.isOld,person1.isFat,person1.isTall);
//
        //1、===========字节位域存储状态码应用==========
//        HPPerson2* person2 = [HPPerson2 new];
//        [person2 setOld:NO];
//        [person2 setFat:YES];
//        [person2 setTall:YES];
//        NSLog(@"old:%d,fat:%d,tall:%d",person2.isOld,person2.isFat,person2.isTall);
        
        //2、===========字节位域存储状态码应用优化（Union共用体）======
        HPPerson3* person3 = [HPPerson3 new];
        [person3 setOld:YES];
        [person3 setFat:NO];
        [person3 setTall:YES];
        NSLog(@"old:%d,fat:%d,tall:%d",person3.isOld,person3.isFat,person3.isTall);
        
    }
    return 0;
}
