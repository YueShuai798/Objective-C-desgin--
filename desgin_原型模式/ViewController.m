//
//  ViewController.m
//  desgin_原型模式
//
//  Created by mac on 2017/12/16.
//  Copyright © 2017年 shuai. All rights reserved.
//

#import "ViewController.h"
#import "IDStudent.h"


@interface ViewController ()
@property (copy, nonatomic)NSString *name;
@property (strong, nonatomic)IDStudent *student;
@property (strong, nonatomic)NSArray *students;
@property (strong, nonatomic)NSMutableArray *m_students;
@property (assign, nonatomic, getter=isMale)BOOL male;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //初始化小江、小帅、小虎、小马...
    /*
    IDStudent *xiaoJiang =[IDStudent new];
    xiaoJiang.male =YES;
    xiaoJiang.name =@"小江";
    xiaoJiang.className =@"小学三年级";
    xiaoJiang.teacher =@"李老师";
    xiaoJiang.years =10;
    
    IDStudent *xiaoHu =[IDStudent new];
    xiaoHu.male =YES;
    xiaoHu.name =@"小虎";
    xiaoHu.className =@"小学三年级";
    xiaoHu.teacher =@"李老师";
    xiaoHu.years =10;
    
    IDStudent *xiaoShuai =[IDStudent new];
    xiaoShuai.male =YES;
    xiaoShuai.name =@"小帅";
    xiaoShuai.className =@"小学三年级";
    xiaoShuai.teacher =@"李老师";
    xiaoShuai.years =10;
    
    ...吐血
     */
    

//    IDStudent *xiaoJiang =[IDStudent studentWithName:@"小江" male:YES className:@"小学三年级" teacher:@"李老师" yeas:10];
//    IDStudent *xiaoShuai= [xiaoJiang copy];//此处就是深拷贝，因为两个对象的地址都不一样(这个过程就是原型模式)
//    IDStudent *xiaoHu =xiaoShuai;//此处就是浅拷贝，其实就是指针赋值
//    xiaoShuai.name =@"小帅";
//    NSLog(@"\n小江的地址:%p\n小帅的地址:%p\n小虎的地址:%p\n小江的名字：%@\n小江的名字：%@\n小虎的名字:%@",xiaoJiang,xiaoShuai,xiaoHu,xiaoJiang.name,xiaoShuai.name,xiaoHu.name);

//    NSMutableString *str =[NSMutableString stringWithFormat:@"小帅"];
//    IDStudent *student =[IDStudent new];
//    student.name1 =str;
//    student.name2 =str;
//    student.name3 =str;
//
//    NSLog(@"\n str的地址：%p\n name1的地址：%p(assign) \n name2的地址：%p(retain)\n name3的地址：%p(copy)\n",str,student.name1,student.name2,student.name3);

    
    NSString *name =[NSString stringWithFormat:@"name"];
    NSString *nameCopy =[name copy];
    nameCopy=[NSString stringWithFormat:@"sssss"];
    
    
    NSLog(@"%@---%@",name,nameCopy);
    NSMutableString *mName =[name mutableCopy];
    NSLog(@"\nname:%p\nnameCopy:%p\nmName:%p\n",name,nameCopy,mName);
    
    NSMutableString *str =[[NSMutableString alloc]initWithString:@"test"];
    NSMutableString *copyStr =[str copy];
    NSLog(@"\n------------------------------------\nstr:%p\ncopyStr:%p",str,copyStr);
}

@end
