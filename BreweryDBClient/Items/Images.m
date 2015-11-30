//
//  Images.m
//  BreweryDBClient
//

#import "Images.h"

@implementation Images

@synthesize icon = _icon;
@synthesize medium = _medium;
@synthesize large = _large;

- (id) initWithArray:(NSArray *)arr
{
	if (self = [super init])
        [self mapFromArray:arr];
    return self;
}

- (void) mapFromArray:(NSArray *)arr
{
	_icon = [arr valueForKey:@"icon"];
	_medium = [arr valueForKey:@"medium"];
	_large = [arr valueForKey:@"large"];
}

@end
