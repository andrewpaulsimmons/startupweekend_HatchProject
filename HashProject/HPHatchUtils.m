//
//  HPHatchUtils.m
//  HashProject
//
//  Created by Andrew Paul Simmons on 7/26/14.
//  Copyright (c) 2014 HashProject Inc. All rights reserved.
//

#import "HPHatchUtils.h"

@implementation HPHatchUtils

static NSArray* questionData;

+ (void) initialize
{
    questionData = @[
                     @{@"title":@"CHOOSE ONE..",
                        @"questions":@[@"Time is of the essence", @"Time is relevant"]},
                      
                      @{@"title":@"YOU WANT TO BE...",
                        @"questions":@[@"A leader", @"A contributer"]},
                     
                     @{@"title":@"YOU PREFER TO...",
                       @"questions":@[@"Work now. Play Later.", @"Work and "]},
                    
    
                     @{@"title":@"YOU ARE A...",
                       @"questions":@[@"Morning Person", @"Afternoon dude", @"Night owl", @"I don't have a preference"]}
                      ];
    
}

+ (NSDictionary*) questionsForScreenWithNumber:(int)questionSetNumber {
    return questionData[questionSetNumber - 1];
}

+ (int) numQuestions {
    return (int)[questionData count];
}

@end
