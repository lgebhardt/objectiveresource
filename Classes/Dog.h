//
//  Dog.h
//  active_resource
//
//  Created by vickeryj on 8/21/08.
//  Copyright 2008 Joshua Vickery. All rights reserved.
//

#import "ObjectiveResource.h"

@interface Dog : NSObject {
	
	NSString	*name;
	NSString	*dogId;
	NSString	*personId;
	NSDate		*updatedAt;
	NSDate		*createdAt;
	NSDate		*birthday;
	NSDate		*dateOfDeath;
	NSString	*weightInGrams;
	NSString	*breed;  
}

@property (nonatomic , retain) NSDate * createdAt;
@property (nonatomic , retain) NSDate * updatedAt;
@property (nonatomic , retain) NSString  *dogId;
@property (nonatomic , retain) NSString *name;
@property (nonatomic , retain) NSString *personId;

@property (nonatomic , retain) NSDate *birthday;
@property (nonatomic , retain) NSDate *dateOfDeath;
@property (nonatomic , retain) NSString *weightInGrams;
@property (nonatomic , retain) NSString *breed;
@end
