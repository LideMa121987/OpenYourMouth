//
//  LMHuman.h
//  LMCharacter
//
//  Created by lide on 14-4-28.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMCreature.h"

@class LMItem;
@class LMEquipment;

@interface LMHuman : LMCreature
{
    NSUInteger          _packageCapacity;
    NSMutableArray      *_itemList;
}

@property (assign, nonatomic) NSUInteger packageCapacity;
@property (retain, nonatomic, readonly) NSMutableArray *itemList;

- (void)obtain:(LMItem *)item;
- (void)lose:(LMItem *)item;

//- (void)equip:(LMEquipment *)equipment;
//- (void)unequip:(LMEquipment *)equipment;

@end
