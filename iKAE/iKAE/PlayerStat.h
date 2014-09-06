//
//  PlayerStat.h
//  iKAE
//
//  Created by Kalin Ash-Elliott on 2014-09-02.
//
//

#import <Foundation/Foundation.h>

@interface PlayerStat : NSObject
{
    NSMutableString *Name;
    
    NSMutableString *Team;
    
    int *Points;
    
}

//properties
//A declared property provides a syntactical shorthand for declaring a class’s accessor methods and, optionally, implementing them.
//https://developer.apple.com/library/ios/documentation/general/conceptual/devpedia-cocoacore/DeclaredProperty.html
@property (weak) NSMutableString *Name;
-(void) initializePlayerStat:(NSMutableString*) name: (NSMutableString*) team: (int) points;


@end
