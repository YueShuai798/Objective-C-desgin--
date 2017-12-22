//
//  IDStudent.h
//  desgin_原型模式
//
//  Created by mac on 2017/12/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDStudent : NSObject

@property (assign, nonatomic, getter=isMale)BOOL male;
@property (copy, nonatomic)NSString *name;
@property (copy, nonatomic)NSString *className;
@property (copy, nonatomic)NSString *teacher;
@property (assign, nonatomic)NSUInteger years;

@property (assign, nonatomic)NSMutableString *name1;
@property (retain, nonatomic)NSMutableString *name2;
@property (copy, nonatomic)NSMutableString *name3;

+ (instancetype)studentWithName:(NSString *)name male:(BOOL)male className:(NSString *)className teacher:(NSString *)teacher yeas:(NSUInteger)years;
@end
