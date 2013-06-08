#Does string contain only digits
Checks if the given string contains only digits (including localized decimal separator).  
All it does is:

	if (self.length == 0) return YES;
	NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
	return ([nf numberFromString: self] == nil) ? NO : YES;
	
but I find it more elegant to call `[myString containsOnlyDigits]`.