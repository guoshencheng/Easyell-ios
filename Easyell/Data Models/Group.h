//
//  Group.h
//  Easyell
//
//  Created by guoshencheng on 3/27/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project, User;

@interface Group : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * groupName;
@property (nonatomic, retain) NSDate * updatetime;
@property (nonatomic, retain) NSString * describe;
@property (nonatomic, retain) NSSet *members;
@property (nonatomic, retain) NSSet *admins;
@property (nonatomic, retain) User *creater;
@property (nonatomic, retain) NSSet *projects;
@end

@interface Group (CoreDataGeneratedAccessors)

- (void)addMembersObject:(User *)value;
- (void)removeMembersObject:(User *)value;
- (void)addMembers:(NSSet *)values;
- (void)removeMembers:(NSSet *)values;

- (void)addAdminsObject:(User *)value;
- (void)removeAdminsObject:(User *)value;
- (void)addAdmins:(NSSet *)values;
- (void)removeAdmins:(NSSet *)values;

- (void)addProjectsObject:(Project *)value;
- (void)removeProjectsObject:(Project *)value;
- (void)addProjects:(NSSet *)values;
- (void)removeProjects:(NSSet *)values;

@end
