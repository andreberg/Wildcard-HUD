/*
 * Name: ReplaceStringFormatter.h
 * Project: Wildcard
 *
 * Creation Date: Sep 23 2004
 * Author: Isao Sonobe <sonoisa (AT) muse (DOT) ocn (DOT) ne (DOT) jp>
 * Copyright: Copyright (c) 2004 Isao Sonobe, All rights reserved.
 * License: OgreKit License
 *
 * Encoding: UTF8
 * Tabsize: 4
 */

#import <Cocoa/Cocoa.h>
#import <OgreKit/OgreKit.h>

@interface ReplaceStringFormatter : NSFormatter
{
	OGRegularExpression	*_unsafeCharRegex;
	OGRegularExpression	*_backslashRegex;
}
@property (retain) OGRegularExpression	*_unsafeCharRegex;
@property (retain) OGRegularExpression	*_backslashRegex;
@end
