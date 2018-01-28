//
//  People.h
//  OnlyATest
//
//  Created by 张储祺 on 2018/1/25.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Animal;

@interface People : NSObject

@property char * Peoplename ;
@property Animal * pet ;
-(void) ownapet:(Animal *)a ;
-(void) changePetName :(char *)rename ;
-(void) touch:(Animal *) pt;

@end
