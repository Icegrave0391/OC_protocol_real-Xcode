//
//  Animal.h
//  protocol
//
//  Created by 张储祺 on 2018/1/26.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
@class People ;

@interface Animal : NSObject
@property char * Animalname ;
@property People * host ;
-(void)touched ;
-(void)roar ;
@end

