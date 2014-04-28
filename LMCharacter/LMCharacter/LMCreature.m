//
//  LMCreature.m
//  LMCharacter
//
//  Created by lide on 14-4-22.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMCreature.h"

@interface LMCreature ()

- (void)death;

@end

@implementation LMCreature

@synthesize currentHealth = _currentHealth;
@synthesize maxHealth = _maxHealth;

@synthesize attackLevel = _attackLevel;
@synthesize defenseLevel = _defenseLevel;

@synthesize isDead = _isDead;

#pragma mark - private

- (void)death
{
    _isDead = YES;
}

#pragma mark - super

- (id)init
{
    self = [super init];
    if(self != nil)
    {
        _isDead = NO;
    }
    
    return self;
}

#pragma mark - public

- (void)attackOtherCreature:(LMCreature *)creature
{
    NSInteger delta = _attackLevel - creature.defenseLevel;
    if(delta > 0)
    {
        creature.currentHealth = creature.currentHealth - delta;
        if(creature.currentHealth < 0)
        {
            [creature death];
        }
    }
}

@end
