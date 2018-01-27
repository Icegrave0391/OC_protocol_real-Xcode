//
//  People.h
//  protocol
//
//  Created by 张储祺 on 2018/1/26.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Animal;

@protocol TouchThePet
@optional
-(void)TouchThePet:(Animal *)pt ;
@end

@interface People : NSObject <TouchThePet>
@property (readonly)char * Peoplename ;
@property Animal * pet ;
@property(nonatomic,weak) id delegate ;
-(void) ownapet:(Animal *)a ;
-(void) changePetName :(char *)rename ;
@end

