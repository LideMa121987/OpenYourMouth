//
//  LMItem.m
//  LMCharacter
//
//  Created by lide on 14-4-28.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMItem.h"

@implementation LMItem

@synthesize currentDuration = _currentDuration;
@synthesize maxDuration = _maxDuration;

@synthesize isDestroyed = _isDestroyed;

@synthesize owner = _owner;

#pragma mark - private

- (void)destory
{
    _isDestroyed = YES;
    
    if(_owner && [_owner respondsToSelector:@selector(itemIsDestoryed:)])
    {
        [_owner itemIsDestoryed:self];
    }
}

#pragma mark - super

- (id)init
{
    self = [super init];
    if(self != nil)
    {
        _isDestroyed = NO;
    }
    
    return self;
}

#pragma mark - public

- (void)use
{
    _currentDuration--;
    if(_currentDuration < 1)
    {
        [self destory];
    }
}

- (void)fix
{
    _currentDuration = _maxDuration;
}

@end
