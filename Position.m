//
//  Position.m
//  Objective-C_Project-1
//
//  Created by Hodge, Janelle on 12/19/16.
//  Copyright © 2016 TDA-Training. All rights reserved.
//

#import "Position.h"


@implementation Position


+ (NSArray *) getPositions {
    Position *culledPosition = [[Position alloc] init];
    NSMutableArray *internalArray = [[NSMutableArray alloc] init];
    
    bool isFinished = false;
    int numberOfPositions;
    
    NSLog(@"\n\nHow many positions would you like to enter?\n");
    scanf("%i%*c", &numberOfPositions);
    printf("%i\n",numberOfPositions);
    
    
    int i = 0;
    while(i < numberOfPositions) {
        
        char symbol[255];
        symbol[255] = getchar();
        while(symbol[255] != '\n')
        symbol[255] = getchar();
        NSLog(@"\n\nPlease enter a symbol:");
        fgets(symbol,10,stdin);
        printf("%s\n",symbol);
        
        int quantity;
        NSLog(@"\n\nPlease enter a quantity:\n");
        scanf("%i%*c", &quantity);
        
        double average;
        NSLog(@"\n\nPlease enter an average price:\n");
        scanf("%lf", &average);
        
        culledPosition = [Position storePosition:symbol includeAverage:average addQuantity:quantity];
        
        [internalArray addObject: culledPosition];
        
        i++;
        
        if (i == numberOfPositions)
            isFinished = true;
    }
    return internalArray;
}

+ (Position *) storePosition: (char *)symbol includeAverage: (double) average addQuantity: (int) quantity {
    Position *newPosition = [[Position alloc] init];
    
    newPosition.symbol = [NSString stringWithUTF8String:symbol];
    newPosition.avgPrice = average;
    newPosition.quantity = quantity;
    
    return newPosition;
}

+ (NSArray *) sortPositionsBySymbol: (NSArray *) unsortedArray {
    
    NSArray *sortedArray =
    [unsortedArray sortedArrayUsingComparator:^NSComparisonResult(Position *p1, Position *p2){
        return [p1.symbol compare:p2.symbol];
    }];
    
    return sortedArray;
    
};

+ (NSArray *) sortPositionsByQuantity: (NSArray *) unsortedArray {
    
    NSArray *sortedArray =
    [unsortedArray sortedArrayUsingComparator:^NSComparisonResult(Position *p1, Position *p2){
        return p1.quantity > p2.quantity;
    }];
    
    return sortedArray;
    
};

+ (NSArray *) sortPositionsByAvgPrice: (NSArray *) unsortedArray {
    
    NSArray *sortedArray =
    [unsortedArray sortedArrayUsingComparator:^NSComparisonResult(Position *p1, Position *p2){
        return p1.avgPrice > p2.avgPrice;
    }];
    
    return sortedArray;
    
};



@end
