//
//  Brewery.m
//  BreweryDBClient
//

#import "Brewery.h"

@implementation Brewery

@synthesize id = _id;
@synthesize name = _name;
@synthesize description = _description;
@synthesize website = _website;
@synthesize established = _established;
@synthesize isOrganic = _isOrganic;
@synthesize status = _status;
@synthesize statusDisplay = _statusDisplay;
@synthesize createDate = _createDate;
@synthesize updateDate = _updateDate;
@synthesize images = _images;

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
	_website = [arr valueForKey:@"website"];
	_established = [arr valueForKey:@"established"];
	_isOrganic = [arr valueForKey:@"isOrganic"];
	_status = [arr valueForKey:@"status"];
	_statusDisplay = [arr valueForKey:@"statusDisplay"];
	_createDate = [arr valueForKey:@"createDate"];
	_updateDate = [arr valueForKey:@"updateDate"];
	_images = [[Images alloc] initWithArray:[arr valueForKey:@"images"]];
}

@end
