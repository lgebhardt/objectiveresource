//
//  DogViewController.h
//  active_resource
//
//  Created by vickeryj on 8/21/08.
//  Copyright 2008 Joshua Vickery. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DogStatus.h"

@class AddDogViewController , Person;


@interface DogViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {

	Person *owner;
	NSMutableArray *dogs;
	AddDogViewController *addController;
	IBOutlet UITableView *tableView;
	DogStatus dogStatus;	
}

@property(nonatomic , retain) Person *owner;
@property(nonatomic , retain) NSMutableArray *dogs;
@property(nonatomic , retain) AddDogViewController *addController;
@property(nonatomic , retain) UITableView *tableView;
@property(nonatomic) DogStatus dogStatus;

- (void) addDogButtonClicked;

@end
