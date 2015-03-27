//
//  Project.h
//  Easyell
//
//  Created by guoshencheng on 3/27/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Group, Item, User;

@interface Project : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * projectname;
@property (nonatomic, retain) NSString * describe;
@property (nonatomic, retain) NSDate * createdate;
@property (nonatomic, retain) Group *group;
@property (nonatomic, retain) NSSet *mambers;
@property (nonatomic, retain) NSSet *admins;
@property (nonatomic, retain) User *creater;
@property (nonatomic, retain) NSSet *items;
@end

@interface Project (CoreDataGeneratedAccessors)

- (void)addMambersObject:(User *)value;
- (void)removeMambersObject:(User *)value;
- (void)addMambers:(NSSet *)values;
- (void)removeMambers:(NSSet *)values;

- (void)addAdminsObject:(User *)value;
- (void)removeAdminsObject:(User *)value;
- (void)addAdmins:(NSSet *)values;
- (void)removeAdmins:(NSSet *)values;

- (void)addItemsObject:(Item *)value;
- (void)removeItemsObject:(Item *)value;
- (void)addItems:(NSSet *)values;
- (void)removeItems:(NSSet *)values;

@end
