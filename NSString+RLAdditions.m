//
//  NSString+RLAdditions.m
//  Taxminder
//
//  Created by Roland Leth on 7.6.13.
//  Copyright (c) 2013 Roland Leth. All rights reserved.
//

#import "NSString+RLAdditions.h"

@implementation NSString (RLAdditions)

- (BOOL)containsOnlyDigits {
	if (self.length == 0) return YES;
	NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
	return ([nf numberFromString: self] == nil) ? NO : YES;
}

@end
