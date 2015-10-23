//
//  main.m
//  PigLatin
//
//  Created by Alex on 2015-10-23.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+pigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *phrase = @"Giant Elephant Warrior";
        
        NSLog(@"%@",[phrase stringbyPigLatinization]);
        
    }
    return 0;
}
