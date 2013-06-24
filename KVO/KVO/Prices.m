//
//  Prices.m
//  KVO
//
//  Created by kada on 13-6-21.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import "Prices.h"

@implementation Prices
@synthesize price;
-(void)dealloc
{
    [super dealloc];
    [price release];
}
@end
