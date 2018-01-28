//
//  People.m
//  protocol
//
//  Created by 张储祺 on 2018/1/26.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import "People.h"
#import "Animal.h"

char name[50] ;
@implementation People
@synthesize Peoplename ,pet ,delegate;

-(instancetype)init{
    self = [super init] ;
    if(self){
        printf("please input your name !\n");
        scanf("%s",name) ;
        Peoplename = name ;
    }
    return self ;
}

-(void) ownapet:(Animal *)a{
    self.pet = a ;
    a.host = self ;
}
-(void)changePetName:(char *)rename{
    self.pet.Animalname = rename ;
}
-(void)TouchThePet:(Animal *)pt{
    [pt touched] ;
}
@end
