//
//  main.m
//  Objective-C_Project-1
//
//  Created by Hodge, Janelle on 12/16/16.
//  Copyright © 2016 TDA-Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Position.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *positionSelections = [Position getPositions];
        
        Position *entry;
        
        for (entry in positionSelections) {
            
            NSLog(@"\n%@%d \n%f", entry.symbol,
                  entry.quantity,
                  entry.avgPrice);
        }
        // Would you like to sort?
        
        // By symbol?
        
        for (entry in positionSelections) {
            
            NSLog(@"\n%@%d \n%f", entry.symbol,
                  entry.quantity,
                  entry.avgPrice);
        }
        
        NSArray *newlySortedArray = [Position sortPositionsBySymbol:positionSelections];
        
        char sortsymbol[255];
        sortsymbol[255] = getchar();
        while(sortsymbol[255] != '\n')
            sortsymbol[255] = getchar();
        NSLog(@"\n\nWould you like to sort by symbol? (Y/y or N/n)");
        fgets(sortsymbol,10,stdin);
        
        if (sortsymbol == "Y" || sortsymbol == "y") {
            NSLog(@"\n\n\n");
            for (entry in newlySortedArray) {
                
                NSLog(@"\n%@%d \n%f", entry.symbol,
                      entry.quantity,
                      entry.avgPrice);
            }
        }

        
        // By price?
        // By quantity?
        // By total value?
        
    }
    return 0;
}

