//
//  NSString+pigLatinization.m
//  PigLatin
//
//  Created by Alex on 2015-10-23.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "NSString+pigLatinization.h"

@implementation NSString (pigLatinization)

-(NSString *)stringbyPigLatinization
{
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    
    NSMutableArray *newWords = [@[] mutableCopy];
    
    for (NSString *word in words) {
        
        NSRange firstVowel = [word rangeOfCharacterFromSet:vowels options:NSCaseInsensitiveSearch];
        
        NSString *start = [word substringToIndex:firstVowel.location];
        
        NSString *end = [word substringFromIndex:firstVowel.location];
        
        NSString *newEnd = [start stringByAppendingString:@"ay"];
        
        NSString *newWord = [end stringByAppendingString:newEnd];
        
        [newWords addObject:newWord];
        
    }
    
    return [newWords componentsJoinedByString:@" "];
    
}

@end
