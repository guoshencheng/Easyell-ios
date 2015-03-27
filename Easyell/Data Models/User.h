//
//  User.h
//  Easyell
//
//  Created by guoshencheng on 3/27/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Group, Item, Project;

@interface User : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * account;
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * avatar;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSSet *groups;
@property (nonatomic, retain) NSSet *projects;
@property (nonatomic, retain) NSSet *postItems;
@property (nonatomic, retain) NSSet *ownItems;
@property (nonatomic, retain) NSSet *createProjects;
@property (nonatomic, retain) NSSet *createGroups;
@property (nonatomic, retain) NSSet *manageProjects;
@property (nonatomic, retain) NSSet *manageGroups;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addGroupsObject:(Group *)value;
- (void)removeGroupsObject:(Group *)value;
- (void)addGroups:(NSSet *)values;
- (void)removeGroups:(NSSet *)values;

- (void)addProjectsObject:(Project *)value;
- (void)removeProjectsObject:(Project *)value;
- (void)addProjects:(NSSet *)values;
- (void)removeProjects:(NSSet *)values;

- (void)addPostItemsObject:(Item *)value;
- (void)removePostItemsObject:(Item *)value;
- (void)addPostItems:(NSSet *)values;
- (void)removePostItems:(NSSet *)values;

- (void)addOwnItemsObject:(Item *)value;
- (void)removeOwnItemsObject:(Item *)value;
- (void)addOwnItems:(NSSet *)values;
- (void)removeOwnItems:(NSSet *)values;

- (void)addCreateProjectsObject:(Project *)value;
- (void)removeCreateProjectsObject:(Project *)value;
- (void)addCreateProjects:(NSSet *)values;
- (void)removeCreateProjects:(NSSet *)values;

- (void)addCreateGroupsObject:(Group *)value;
- (void)removeCreateGroupsObject:(Group *)value;
- (void)addCreateGroups:(NSSet *)values;
- (void)removeCreateGroups:(NSSet *)values;

- (void)addManageProjectsObject:(Project *)value;
- (void)removeManageProjectsObject:(Project *)value;
- (void)addManageProjects:(NSSet *)values;
- (void)removeManageProjects:(NSSet *)values;

- (void)addManageGroupsObject:(Group *)value;
- (void)removeManageGroupsObject:(Group *)value;
- (void)addManageGroups:(NSSet *)values;
- (void)removeManageGroups:(NSSet *)values;

@end
