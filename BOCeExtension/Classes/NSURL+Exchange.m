//
//  NSURL+Exchange.m
//  Industrial
//
//  Created by boce on 2020/11/24.
//  Copyright © 2020 boce. All rights reserved.
//

#import "NSURL+Exchange.h"

@implementation NSURL(Exchange)

+ (void)load{
    Method URLWithStringMethod = class_getClassMethod(self, @selector(URLWithString:));
    Method sc_URLWithStringMethod = class_getClassMethod(self, @selector(sc_URLWithString:));
    method_exchangeImplementations(URLWithStringMethod, sc_URLWithStringMethod);
}

+ (NSURL *)sc_URLWithString:(NSString *)URLString {
    NSString *newURLString = [URLString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    return [NSURL sc_URLWithString:newURLString];
}

@end
