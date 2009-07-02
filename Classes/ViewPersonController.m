//
//  ViewPersonController.m
//  objective_resource
//
//  Created by James Burka on 1/27/09.
//  Copyright 2009 Burkaprojects. All rights reserved.
//

#import "ViewPersonController.h"
#import "AddPersonViewController.h"
#import "DogViewController.h"
#import "Person.h"
#import "DogStatus.h"

@implementation ViewPersonController
@synthesize person;

- (void)viewDidLoad {
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit 
																																												 target:self action:@selector(editPersonButtonWasPressed)]; 
}

- (void)viewWillAppear:(BOOL)animated {
	self.title = person.name;
	[super viewWillAppear:animated];
}

-(void) editPersonButtonWasPressed {
	AddPersonViewController *aController = [[[AddPersonViewController alloc ] initWithNibName:@"AddPersonView" bundle:nil ] autorelease];
	aController.person = person;
	aController.delegate = self;
	[self.navigationController pushViewController:aController animated:YES];	
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *CellIdentifier = @"Person";
	
	UITableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}
  
	NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init]  autorelease];
	[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
	[dateFormatter setTimeStyle:NSDateFormatterNoStyle];
  
	switch (indexPath.section) {
		case 0:
			[cell.textLabel setText:person.name];
			break;
		case 1:
			[cell.textLabel setText:person.personId];
			break;
		case 2:
			[cell.textLabel setText:@"View Living Dogs"];
			break;
		case 3:
			[cell.textLabel setText:@"View Deceased Dogs"];
			break;
		case 4:
			[cell.textLabel setText:@"View All Dogs"];
			break;
		default:
			break;
	}
	// Configure the cell
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  	return [[NSArray arrayWithObjects:@"Person's Name",@"Model Id",@"Living Dogs",@"Deceased Dogs", @"All Dogs", nil] 
						objectAtIndex:section];
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if(indexPath.section == 2) {
		return indexPath;
	} else if(indexPath.section == 3) {
		return indexPath;
	} else if(indexPath.section == 4) {
		return indexPath;
	}
	return nil;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if(indexPath.section == 2) {
		DogViewController *aController = [[[DogViewController alloc] initWithNibName:@"DogViewController" bundle:nil] autorelease];
		aController.owner = person;
		aController.dogStatus = LIVING;
		[self.navigationController pushViewController:aController animated:YES];		
	} else if(indexPath.section == 3) {
		DogViewController *aController = [[[DogViewController alloc] initWithNibName:@"DogViewController" bundle:nil] autorelease];
		aController.owner = person;
		aController.dogStatus = DECEASED;
		[self.navigationController pushViewController:aController animated:YES];		
	} else if(indexPath.section == 4) {
		DogViewController *aController = [[[DogViewController alloc] initWithNibName:@"DogViewController" bundle:nil] autorelease];
		aController.owner = person;
		aController.dogStatus = ALL;
		[self.navigationController pushViewController:aController animated:YES];		
	}
	
}

- (void)dealloc {
	[person release];
    [super dealloc];
}


@end

