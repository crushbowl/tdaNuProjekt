//
//  Position.h
//  Objective-C_Project-1
//
//  Created by Hodge, Janelle on 12/19/16.
//  Copyright © 2016 TDA-Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Position : NSObject

@property (nonatomic, assign) NSString *symbol;
@property (nonatomic, assign) double avgPrice;
@property (nonatomic, assign) int quantity;


+ (NSArray *) getPositions;
+ (Position *) storePosition: (char *)symbol includeAverage: (double) average addQuantity: (int) quantity;
+ (NSArray *) sortPositionsBySymbol: (NSArray *) unsortedArray;
+ (NSArray *) sortPositionsByQuantity: (NSArray *) unsortedArray;
+ (NSArray *) sortPositionsByAvgPrice: (NSArray *) unsortedArray;

@end
