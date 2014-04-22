//
//  LMCreature.m
//  LMCharacter
//
//  Created by lide on 14-4-22.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMCreature.h"

@implementation LMCreature

@synthesize currentHealth = _currentHealth;
@synthesize maxHealth = _maxHealth;

@synthesize attackLevel = _attackLevel;
@synthesize defenseLevel = _defenseLevel;

- (id)init
{
    self = [super init];
    if(self != nil)
    {
    
    }
    
    return self;
}

@end
