//
//  LMCreature.h
//  LMCharacter
//
//  Created by lide on 14-4-22.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMObject.h"

@interface LMCreature : LMObject
{
    //生命值
    NSInteger       _currentHealth;
    NSInteger       _maxHealth;
    //攻击力
    NSInteger       _attackLevel;
    //防御力
    NSInteger       _defenseLevel;
}


@property (assign, nonatomic) NSInteger currentHealth;
@property (assign, nonatomic) NSInteger maxHealth;

@property (assign, nonatomic) NSInteger attackLevel;
@property (assign, nonatomic) NSInteger defenseLevel;

@end
