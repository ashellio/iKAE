//
//  PlayerStat.m
//  iKAE
//
//  Created by Kalin Ash-Elliott on 2014-09-02.
//
//

#import "PlayerStat.h"

@implementation PlayerStat

//constructor
-(void) initializePlayerStat:(NSMutableString*) name: (NSMutableString*) team: (int) points
{
    Name=name;
    Team=team;
    Points=points;
}

-(NSMutableString*) Name
{
    return Name;
}

-(NSMutableString*) Team
{
    return Team;
}

-(int) Points
{
    return Points;
}
@end
