//
//  Dog.m
//  protocol
//
//  Created by 张储祺 on 2018/1/26.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import "Dog.h"
#import "Animal.h"
#import "People.h"
@implementation Dog
-(instancetype)init{
    self = [super init] ;
    if(self){
        self.Animalname = "dog" ;
    }
    return self ;
}
-(void) roar{
    if(!self.host)printf("QAQ\n");
    else printf("Bow~Bow~\n") ;
}
@end

