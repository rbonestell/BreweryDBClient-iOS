//
//  Country.m
//  BreweryDBClient
//

#import "Country.h"

@implementation Country

@synthesize isoCode = _isoCode;
@synthesize name = _name;
@synthesize displayName = _displayName;
@synthesize isoThree = _isoThree;
@synthesize numberCode = _numberCode;
@synthesize urlTitle = _urlTitle;
@synthesize createDate = _createDate;

- (id) initWithArray:(NSArray *)arr
{
	if (self = [super init])
        [self mapFromArray:arr];
    return self;
}

- (void) mapFromArray:(NSArray *)arr
{
	_isoCode = [arr valueForKey:@"isoCode"];
	_name = [arr valueForKey:@"name"];
	_displayName = [arr valueForKey:@"displayName"];
	_isoThree = [arr valueForKey:@"isoThree"];
	_numberCode = [arr valueForKey:@"numberCode"];
	_urlTitle = [arr valueForKey:@"urlTitle"];
	_createDate = [arr valueForKey:@"createDate"];
}

@end