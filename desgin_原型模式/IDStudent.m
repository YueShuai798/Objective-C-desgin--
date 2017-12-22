//
//  IDStudent.m
//  desgin_原型模式
//
//  Created by mac on 2017/12/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "IDStudent.h"
@implementation IDStudent
+ (instancetype)studentWithName:(NSString *)name male:(BOOL)male className:(NSString *)className teacher:(NSString *)teacher yeas:(NSUInteger)years{
    IDStudent *studen =[IDStudent new];
    studen.male =male;
    studen.name =name;
    studen.className =className;
    studen.teacher =teacher;
    studen.years =years;
    return studen;
}
-(id)copyWithZone:(NSZone *)zone
{
    return [[[self class] allocWithZone:zone] init];
}

@end
