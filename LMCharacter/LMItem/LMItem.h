//
//  LMItem.h
//  LMCharacter
//
//  Created by lide on 14-4-28.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMObject.h"

@class LMHuman;

@interface LMItem : LMObject
{
    NSInteger       _currentDuration;
    NSInteger       _maxDuration;
    
    BOOL            _isDestroyed;
    
    LMHuman         *_owner;
}

@property (assign, nonatomic) NSInteger currentDuration;
@property (assign, nonatomic) NSInteger maxDuration;

@property (assign, nonatomic) BOOL isDestroyed;

@property (retain, nonatomic) LMHuman *owner;

- (void)use;
- (void)fix;

@end

@protocol LMItemDelegate <NSObject>

- (void)itemIsDestoryed:(LMItem *)item;

@end
