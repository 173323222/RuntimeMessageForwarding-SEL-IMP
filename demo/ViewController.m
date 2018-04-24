
//  Copyright © 2018年 刘宏伟. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self method_a];
    [self method_b];
}

- (void)method_a {
//    Person *p = [[Person alloc] init];
//    [p holdUpString];
}

- (void)method_b {
    Person *p = [[Person alloc] init];
//    [p holdUpString:@"小明拿起了"];
    objc_msgSend(p, @selector(holdUpString:), @"小明拿起了");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
