//
//  NSString+LTHAdditions.m
//  Taxminder
//
//  Created by Roland Leth on 7.6.13.
//  Copyright (c) 2013 Roland Leth. All rights reserved.
//

#import "NSString+LTHAdditions.h"

@implementation NSString (LTHAdditions)


- (BOOL)isDecimal {
	if (self.length == 0) return NO;
	NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
	return ([nf numberFromString: self] == nil) ? NO : YES;
}


- (BOOL)isInteger {
	if (self.length == 0) return NO;
	NSPredicate *numberPredicate = [NSPredicate predicateWithFormat: @"SELF MATCHES '^[0-9]+$'"];
    return [numberPredicate evaluateWithObject: self];
}


- (BOOL)containsString:(NSString *)string {
    if ([self rangeOfString: string].location != NSNotFound) return YES;
    return NO;
}


@end
