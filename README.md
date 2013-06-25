#Is the string a decimal?
Checks if the given string contains only digits (including localized decimal separator). All it does is:

	if (self.length == 0) return NO;
	NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
	return ([nf numberFromString: self] == nil) ? NO : YES;
	
but I find it more elegant to call `[myString isDecimal]`.

#Is the string an integer?
Checks if the given string contains only digits. All it does is:

	if (self.length == 0) return NO;
	NSPredicate *numberPredicate = [NSPredicate predicateWithFormat: @"SELF MATCHES '^[0-9]+$'"];
    return [numberPredicate evaluateWithObject: self];
	
but I find it more elegant to call `[myString isInteger]`.