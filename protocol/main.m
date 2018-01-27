//
//  main.m
//  protocol
//
//  Created by 张储祺 on 2018/1/26.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "Cat.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People * person1 = [[People alloc] init] ;
        Cat * animal1 = [[Cat alloc] init] ;
        Dog * animal2 = [[Dog alloc] init] ;
        [person1 ownapet:animal1] ;
        printf("Now the first person is touching two animals\n");
        [person1 TouchThePet:animal1];
        [person1 TouchThePet:animal2];
        printf("Now there is a new person:\n");
        People * person2 = [[People alloc] init] ;
        [person2 ownapet:animal2] ;
        person1.delegate = person2 ;
        if([person1.delegate respondsToSelector:@selector(TouchThePet:)]){
            printf("Now the second person is touching two animals\n");
            [person1.delegate TouchThePet:animal1] ;
            [person1.delegate TouchThePet:animal2] ;
        }
    }
    return 0;
}
