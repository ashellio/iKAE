//
//  FirstViewController.m
//  iKAE
//
//  Created by Jonathan Du on 13-11-09.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "Item.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Lets work with OO programming in objective C.
    //First, to use a class, we must #import... in this case we use #import "Item.h"
    //Declare an object
    Item *item = [[Item alloc] init];
    
    //set a property
    [item setName:@"Walter White"];
    
    //get a property
    NSMutableString* breakingBad = [item Name];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
