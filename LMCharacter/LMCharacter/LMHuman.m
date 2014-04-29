//
//  LMHuman.m
//  LMCharacter
//
//  Created by lide on 14-4-28.
//  Copyright (c) 2014年 lide. All rights reserved.
//

#import "LMHuman.h"
#import "LMItem.h"
#import "LMEquipment.h"

@implementation LMHuman

@synthesize packageCapacity = _packageCapacity;
@synthesize itemList = _itemList;

- (id)init
{
    self = [super init];
    if(self != nil)
    {
        _itemList = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    return self;
}

- (void)dealloc
{
    LM_SAFE_RELEASE(_itemList);
    
    [super dealloc];
}

- (void)obtain:(LMItem *)item
{
    if(_itemList.count < _packageCapacity)
    {
        item.owner = self;
        [_itemList addObject:item];
    }
    else
    {
        NSLog(@"I can not carry any more.");
    }
}

- (void)lose:(LMItem *)item
{
    if(item.owner == self && [_itemList containsObject:item])
    {
        item.owner = nil;
        [_itemList removeObject:item];
    }
    else
    {
        NSLog(@"I do not own this item.");
    }
}

//- (void)equip:(LMEquipment *)equipment
//{
//    if(equipment.owner == self)
//    {
//        [equipment setIsEquiped:YES];
//    }
//}
//
//- (void)unequip:(LMEquipment *)equipment
//{
//    if(equipment.owner == self)
//    {
//        [equipment setIsEquiped:NO];
//    }
//}

#pragma mark - LMItemDelegate

- (void)itemIsDestoryed:(LMItem *)item
{
    [self lose:item];
}

@end
