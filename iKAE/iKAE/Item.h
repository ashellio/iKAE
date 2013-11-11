//
//  Item.h
//  iKAE
//
//  Created by Jonathan Du on 13-11-10.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject{
    int Id;
    NSMutableString *Name;
}

//properties
//A declared property provides a syntactical shorthand for declaring a class’s accessor methods and, optionally, implementing them.
//https://developer.apple.com/library/ios/documentation/general/conceptual/devpedia-cocoacore/DeclaredProperty.html
@property (assign) int Id;
@property (assign) NSMutableString *Name;

-(void) setName:(NSMutableString*) name;


@end
