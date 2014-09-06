//
//  Client.m
//  iKAE
//
//  Created by Kalin Ash-Elliott on 2014-09-01.
//
//

#import "Client.h"
#import "PlayerStat.h"

@implementation Client
//http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo

//all code in here was taken from http://stackoverflow.com/a/21828279
-(void) getFromService
{
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:[NSURL  URLWithString:@"http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo"]];
    
    [request setHTTPMethod:@"GET"];
    
    [request setValue:@"application/json;charset=UTF-8" forHTTPHeaderField:@"content-type"];
    
    NSError *err;
    
    NSURLResponse *response;
    
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request   returningResponse:&response error:&err];
    
    //You need to check response.Once you get the response copy that and paste in ONLINE JSON VIEWER.If you do this clearly you can get the correct results.
    
    //After that it depends upon the json format whether it is DICTIONARY or ARRAY, either way, here is where we get our JSon string
    NSDictionary *jsonArray = [NSJSONSerialization JSONObjectWithData:responseData options: NSJSONReadingMutableContainers error: &err];
    
    NSArray *array=[[jsonArray objectForKey:@"search_api"]objectForKey:@"result"]; //objectForKey depends in our request
}

-() getPlayerStatsForUserTeam: (NSMutableString*) userTeamName
{
    NSMutableArray * stats = [NSMutableArray new];
    PlayerStat * stat = [[PlayerStat alloc] init];
    [stat initializePlayerStat:@"Sidney Crosby" :@"PIT" :104];
    [stats addObject:stat];
    PlayerStat * stat2 = [[PlayerStat alloc] init];
    [stat2 initializePlayerStat:@"Ryan Getzlaf" :@"ANA" :87];
    [stats addObject:stat2];
    PlayerStat * stat3 = [[PlayerStat alloc] init];
    [stat3 initializePlayerStat:@"Claude Giroux" :@"PHI" :86];
    [stats addObject:stat3];
    PlayerStat * stat4 = [[PlayerStat alloc] init];
    [stat4 initializePlayerStat:@"Tyler Seguin" :@"DAL" :84];
    [stats addObject:stat4];
    PlayerStat * stat5 = [[PlayerStat alloc] init];
    [stat5 initializePlayerStat:@"Corey Perry" :@"ANA" :82];
    [stats addObject:stat5];
    PlayerStat * stat6 = [[PlayerStat alloc] init];
    [stat6 initializePlayerStat:@"Phil Kessel" :@"TOR" :80];
    [stats addObject:stat6];
    PlayerStat * stat7 = [[PlayerStat alloc] init];
    [stat7 initializePlayerStat:@"Taylor Hall" :@"EDM" :80];
    [stats addObject:stat7];
    PlayerStat * stat8 = [[PlayerStat alloc] init];
    [stat8 initializePlayerStat:@"Alex Ovechkin" :@"WSH" :79];
    [stats addObject:stat8];
    PlayerStat * stat9 = [[PlayerStat alloc] init];
    [stat9 initializePlayerStat:@"Joe Pavelski" :@"SJS" :79];
    [stats addObject:stat9];
    PlayerStat * stat10 = [[PlayerStat alloc] init];
    [stat10 initializePlayerStat:@"Jamie Benn" :@"DAL" :79];
    
        [stats addObject:stat10];
    
    
}
@end
