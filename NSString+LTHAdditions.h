//
//  NSString+LTHAdditions.h
//  Taxminder
//
//  Created by Roland Leth on 7.6.13.
//  Copyright (c) 2013 Roland Leth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LTHAdditions)

/**
 Returns a Boolean if the receiver is a decimal (localized decimal separator included).
 */
- (BOOL)isDecimal;

/**
 Returns a Boolean if the receiver is an integer.
 */
- (BOOL)isInteger;

@end
