//
//  BeerStyle.m
//  BreweryDBClient
//

#import "BeerStyle.h"

@implementation BeerStyle

@synthesize name = _name;
@synthesize description = _description;

- (id) initWithArray:(NSArray *)arr
{
	if (self = [super init])
        [self mapFromArray:arr];
    return self;
}

- (void)mapFromArray:(NSArray *)arr
{
	_name = [arr valueForKey:@"name"];
	_description = [arr valueForKey:@"description"];
}

@end
