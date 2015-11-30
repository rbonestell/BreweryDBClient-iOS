//
//  Beer.m
//  BreweryDBClient
//

#import "Beer.h"

@implementation Beer

@synthesize id = _id;
@synthesize name = _name;
@synthesize description = _description;
@synthesize abv = _abv;
@synthesize ibu = _ibu;
@synthesize style = _style;

- (id) initWithArray:(NSArray *)arr
{
	if (self = [super init])
        [self mapFromArray:arr];
    return self;
}

- (void)mapFromArray:(NSArray *)arr
{
	_id = [arr valueForKey:@"id"];
	_name = [arr valueForKey:@"name"];
	_description = [arr valueForKey:@"description"];
	_abv = [arr valueForKey:@"abv"];
	_ibu = [arr valueForKey:@"ibu"];
	_style = [[BeerStyle alloc] initWithArray:[arr valueForKey:@"style"]];	
}

@end
