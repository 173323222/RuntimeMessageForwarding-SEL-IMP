//
//  Person.m
//  demo
//
//  Created by 刘宏伟 on 2018/4/24.
//  Copyright © 2018年 刘宏伟. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    //添加hold up方法
    class_addMethod(self, sel, (IMP)holdUpString, "");
    return [super resolveInstanceMethod:sel];
}


//void holdUpString() {
//    NSLog(@"棍子");
//}

//- (void)holdUpString {
//    NSLog(@"111");
//}

void holdUpString(id self, SEL _cmd, NSString *string) {
    NSLog(@"%@砖头", string);
}

@end
