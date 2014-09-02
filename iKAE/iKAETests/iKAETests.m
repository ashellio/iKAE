//
//  iKAETests.m
//  iKAETests
//
//  Created by Jonathan Du on 13-11-09.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
// http://www.raywenderlich.com/3716/unit-testing-tutorial-for-ios-xcode-4-quick-start-guide
// To run tests, select the Simulator you want from the Scheme dropdown list,
// then Product > Test to start the tests.

#import "iKAETests.h"
#import "Item.h"
#import "Client.h"

@implementation iKAETests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    //STFail(@"Unit tests are not implemented yet in iKAETests");
}


//Create an object and test out it's values.
- (void)testCreateObject
{
    //Lets work with OO programming in objective C.
    //First, to use a class, we must #import... in this case we use #import "Item.h"
    //Declare an object
    Item *item = [[Item alloc] init];
    
    //set a property
    [item setName:@"Walter White"];
    
    //get a property
    NSMutableString* breakingBad = [item Name];
    
    STAssertEqualObjects(breakingBad, [item Name], @"Strings are not equal.");
}

- (void)testClient
{
    Client *client = [[Client alloc] init];
    [client getFromService];
}
@end
