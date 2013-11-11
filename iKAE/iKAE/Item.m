//
//  Item.m
//  iKAE
//
//  Created by Jonathan Du on 13-11-10.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
// 
//  This class is found in the group, Model Group... 
//  Here is an explaination on why we want to use Groups AKA virtual folders rather than folders for organizing our class in our project: http://stackoverflow.com/a/8872168
//

#import "Item.h"

@implementation Item
-(int) Id
{
    return Id;
}

-(NSMutableString*) Name
{
    return Name;
}

-(void) setName:(NSString*) name
{
    Name=name;
}

/*-(NSMutableString*) getCredentialsString
{
    NSMutableString* myNameIs = @"My name is ";
    NSMutableString* credentials = [myNameIs appendString:Name];
    return credentials;
}*/
@end
