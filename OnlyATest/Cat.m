//
//  Cat.m
//  OnlyATest
//
//  Created by 张储祺 on 2018/1/25.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import "Cat.h"
#import "Animal.h"
#import "People.h"
@implementation Cat
-(instancetype)init{
    self = [super init] ;
    if(self){
        self.Animalname = "cat" ;
    }
    return self ;
}
-(void)roar{
    if(!self.host)NSLog(@"QAQ");
    else NSLog(@"Meow~Meow~");
}
@end
