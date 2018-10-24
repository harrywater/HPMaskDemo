//
//  HPPerson2.h
//  HPMaskDemo
//
//  Created by 王辉平 on 2018/10/24.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPPerson2 : NSObject

- (void)setOld:(BOOL)old;
- (void)setTall:(BOOL)tall;
- (void)setFat:(BOOL)fat;

- (BOOL)isFat;
- (BOOL)isTall;
- (BOOL)isOld;
@end
