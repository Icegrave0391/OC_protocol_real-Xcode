//
//  main.m
//  OnlyATest
//
//  Created by 张储祺 on 2018/1/25.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
int main ( int argc , char* argv []){
    @autoreleasepool{
        People * person = [[People alloc] init] ;
        Cat * animal1 = [[Cat alloc]init] ;
        Dog * animal2 = [[Dog alloc]init] ;
        [person ownapet:animal1] ;
        [person changePetName:"orange"] ;
        printf("now your pet's name is : %s\n",person.pet.Animalname);
        printf("And your name is : %s\n",person.Peoplename);
        for(int i = 1 ;i <= 20 ; i++ ){
            [person touch:animal1];
            [person touch:animal2];
        }
    }
    return 0 ;
}
