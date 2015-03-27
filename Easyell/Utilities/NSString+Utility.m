//
//  NSString+Utility.m
//  Vibin
//
//  Created by Sherlock on 2/25/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "NSString+Utility.h"

@implementation NSString (Utility)

- (NSString *)timestampUrl {
  NSString *dayString = [NSDateFormatter dayStringFromCurrentDate];
  NSString *timestampUrl = @"";
  if ([self contains:@"?"]) {
    if ([self hasSuffix:@"?"]) {
      timestampUrl = [self stringByAppendingFormat:@"day=%@", dayString];
    } else {
      timestampUrl = [self stringByAppendingFormat:@"&day=%@", dayString];
    }
  } else {
    timestampUrl = [self stringByAppendingFormat:@"?day=%@", dayString];
  }
  
  return timestampUrl;
}

- (NSString *)toTagCompliantString {
  NSCharacterSet *nonalphanumericSet = [[NSCharacterSet alphanumericCharacterSet ] invertedSet];
  NSString *resultString = [[self componentsSeparatedByCharactersInSet:nonalphanumericSet] componentsJoinedByString:@""];
  return [resultString lowercaseString];
}

- (NSString *)toUrlEncodedString {
  NSMutableString *output = [NSMutableString string];
  const unsigned char *source = (const unsigned char *)[self UTF8String];
  int sourceLen = strlen((const char *)source);
  for (int i = 0; i < sourceLen; ++i) {
    const unsigned char thisChar = source[i];
    if (thisChar == ' ') {
      [output appendString:@"+"];
    } else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~' ||
               (thisChar >= 'a' && thisChar <= 'z') ||
               (thisChar >= 'A' && thisChar <= 'Z') ||
               (thisChar >= '0' && thisChar <= '9')) {
      [output appendFormat:@"%c", thisChar];
    } else {
      [output appendFormat:@"%%%02X", thisChar];
    }
  }
  return output;
}

- (NSDictionary *)toDictionaryAsJSON {
  id result = [NSJSONSerialization JSONObjectWithData: [self dataUsingEncoding:NSUTF8StringEncoding]
                                              options: NSJSONReadingAllowFragments
                                                error: nil];
  if ([result isKindOfClass:[NSString class]]) {
    result = [result toDictionaryAsJSON];
  }
  return result;
}

- (NSString *)toFacebookOriginImageUrl {
  static NSRegularExpression *regex1 = nil;
  static NSRegularExpression *regex2 = nil;
  if (!regex1) {
    regex1 = [NSRegularExpression regularExpressionWithPattern:@"/s(\\d+x\\d+)/" options:0 error:nil];
  }
  if (!regex2) {
    regex2 = [NSRegularExpression regularExpressionWithPattern:@"/\\w{1,1}/(\\w\\d\\.\\d\\-\\d)/" options:0 error:nil];
  }
  NSString *url = [regex1 stringByReplacingMatchesInString:self options:0 range:NSMakeRange(0, [self length]) withTemplate:@"/n$1/"];
  
  if ([url hasSuffix:@"_s.jpg"]) {
    url = [NSString stringWithFormat:@"%@_n.jpg", [url substringToIndex:(url.length - 6)]];
  } else if ([url hasSuffix:@"_s.png"]) {
    url = [NSString stringWithFormat:@"%@_n.png", [url substringToIndex:(url.length - 6)]];
  }
  
  if (![url isEqualToString:self]) {
    url = [regex2 stringByReplacingMatchesInString:url options:0 range:NSMakeRange(0, [url length]) withTemplate:@"/$1/"];
  }
  
  return url;
}

- (NSString *)convertToHTML {
  return [NSString stringWithFormat:@"<p><font size=\"3\" face=\"Helvetica\"><a href=\"%@\">%@</br></a></br></font></p>", self, self];
}

- (NSString *)removeNewLines {
  return [self stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
}

- (BOOL)isValidEmail {
  BOOL stricterFilter = YES; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
  NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
  NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
  NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
  NSPredicate *emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
  return [emailPredicate evaluateWithObject:self];
}

- (BOOL)isBlank {
  return ![self isNotBlank];
}

- (BOOL)isNotBlank {
  BOOL isNotBlank = NO;
  NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
  NSString *trimmed = [self stringByTrimmingCharactersInSet:whitespace];
  if ([trimmed length] > 0) {
    isNotBlank = YES;
  }
  return isNotBlank;
}

- (BOOL)contains:(NSString *)str {
  return [self rangeOfString:str].location == NSNotFound ? NO : YES;
}

- (BOOL)isUUID {
  BOOL isUUID = NO;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" options:NSRegularExpressionCaseInsensitive error:nil];
  int matches = [regex numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];
  if (matches == 1) {
    isUUID = YES;
  }
  return isUUID;
}

@end
