//
//  Item.h
//  Easyell
//
//  Created by guoshencheng on 3/27/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project, User;

@interface Item : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * describe;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSDate * createdate;
@property (nonatomic, retain) NSDate * updatedate;
@property (nonatomic, retain) User *poster;
@property (nonatomic, retain) NSSet *owners;
@property (nonatomic, retain) Project *project;
@end

@interface Item (CoreDataGeneratedAccessors)

- (void)addOwnersObject:(User *)value;
- (void)removeOwnersObject:(User *)value;
- (void)addOwners:(NSSet *)values;
- (void)removeOwners:(NSSet *)values;

@end
