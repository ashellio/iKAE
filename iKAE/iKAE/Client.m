//
//  Client.m
//  iKAE
//
//  Created by Kalin Ash-Elliott on 2014-09-01.
//
//

#import "Client.h"

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
@end
