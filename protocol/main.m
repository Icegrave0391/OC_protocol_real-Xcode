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
        printf("now %s, choose one to be as your pet(press1 to select the cat or 2 to select the dog)\n",[person1 Peoplename]) ;
        
        int n ;
        scanf("%i",&n) ;
        switch (n) {
            case 1:
                [person1 ownapet:animal1];
                printf("You choose the cat.\n");
                break;
            case 2:
                [person1 ownapet:animal2];
                printf("you choose the dog.\n");
                break ;
            default:
                break;
        }
        printf("Now the first person %s is touching two animals\n",[person1 Peoplename]);
        [person1 TouchThePet:animal1];
        [person1 TouchThePet:animal2];
        printf("Now there is a new person whose name is :\n");
        People * person2 = [[People alloc] init] ;
        printf("now %s, choose one to be as your pet(press1 to select the cat or 2 to select the dog)\n",[person2 Peoplename]) ;
        scanf("%i",&n) ;
        switch (n) {
            case 1:
                [person2 ownapet:animal1];
                printf("You choose the cat.\n");
                break;
            case 2:
                [person2 ownapet:animal2];
                printf("you choose the dog.\n");
                break ;
            default:
                break;
        }
        person1.delegate = person2 ;
        if([person1.delegate respondsToSelector:@selector(TouchThePet:)]){
            printf("Now the second person %s is touching two animals\n",[person2 Peoplename]);
            [person1.delegate TouchThePet:animal1] ;
            [person1.delegate TouchThePet:animal2] ;
        }
    }
    return 0;
}
