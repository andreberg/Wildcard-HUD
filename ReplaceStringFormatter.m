//
//  ReplaceStringFormatter.m
//  Wildcard
//
//  Created by Isao Sonobe on 04/09/23.
//  Copyright 2004 __MyCompanyName__. All rights reserved.
//

#import "ReplaceStringFormatter.h"


@implementation ReplaceStringFormatter

- (id)init
{
	self = [super init];
	if (self != nil) {
		_unsafeCharRegex = [[OGRegularExpression alloc] initWithString:@":"];
		_backslashRegex = [[OGRegularExpression alloc] initWithString:OgreGUIYenCharacter];
	}
	
	return self;
}

- (void)dealloc
{
	[_unsafeCharRegex release];
	[_backslashRegex release];
	[super dealloc];
}

- (NSString*)stringForObjectValue:(id)anObject
{
    if (![anObject isKindOfClass:[NSString class]]) {
		return nil;
    }
	
	return (NSString*)anObject;
}

- (NSAttributedString*)attributedStringForObjectValue:(id)anObject 
	withDefaultAttributes:(NSDictionary*)attributes
{
    if (![anObject isKindOfClass:[NSString class]]) {
		return nil;
    }
	
	return [[[NSAttributedString alloc] initWithString:(NSString*)anObject 
		attributes:attributes] autorelease];
}

- (NSString*)editingStringForObjectValue:(id)anObject
{
    if (![anObject isKindOfClass:[NSString class]]) {
		return nil;
    }
	
	return (NSString*)anObject;
}

- (BOOL)isPartialStringValid:(NSString*)partial
	newEditingString:(NSString**)newString
	errorDescription:(NSString**)errorString
{
	NSString	*safeString;
	safeString = [_unsafeCharRegex replaceAllMatchesInString:partial withString:@""];
	safeString = [_backslashRegex replaceAllMatchesInString:safeString withString:@"\\\\"];
	
	if (![partial isEqualToString:safeString]) {
		*newString = safeString;
		*errorString = @"invalid character";
		return NO;
	}
	
	return YES;
}

- (BOOL)getObjectValue:(id*)obj forString:(NSString*)string 
	errorDescription:(NSString**)error
{
	NSString	*safeString;
	safeString = [_unsafeCharRegex replaceAllMatchesInString:string withString:@""];
	safeString = [_backslashRegex replaceAllMatchesInString:safeString withString:@"\\\\"];
	
	*obj = safeString;
	return YES;
}

@synthesize _unsafeCharRegex;
@synthesize _backslashRegex;
@end
