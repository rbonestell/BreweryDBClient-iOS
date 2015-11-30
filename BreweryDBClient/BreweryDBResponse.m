//
//  BreweryDBResponse.m
//  BreweryDBClient
//

#import "BreweryDBResponse.h"

@implementation BreweryDBResponse

@synthesize status = _status;
@synthesize message = _message;
@synthesize totalResults = _totalResults;
@synthesize currentPage = _currentPage;
@synthesize numberOfPages = _numberOfPages;
@synthesize data = _data;
@synthesize locations = _locations;
@synthesize beers = _beers;
@synthesize endPoint;

- (id)initWithArray:(NSArray *)arr forEndPoint:(EndPoint)ep
{
	if (self = [super init])
	{
		[self setEndPoint:ep];
        [self mapFromRawResponseArray:arr];
	}
    return self;
}

- (void)mergeResponse:(BreweryDBResponse *)resp
{
	switch (resp.endPoint)
	{
		case CITYSTATE:
		case LOCATIONS:
			[_locations addObjectsFromArray:resp.locations];
			break;
		case BEERS:
			[_beers addObjectsFromArray:resp.beers];
			break;
		default:
			break;
	}
	_currentPage = resp.currentPage;
}

- (void)mapFromRawResponseArray:(NSArray *)respArray
{
	if (!_data)
		_data = [[NSMutableArray alloc] initWithArray:[respArray valueForKey:@"data"]];
	else
		[_data addObjectsFromArray:[respArray valueForKey:@"data"]];
	_status = [respArray valueForKey:@"status"];
	_message = [respArray valueForKey:@"message"];
	_totalResults = [[respArray valueForKey:@"totalResults"] intValue];
	_numberOfPages = [[respArray valueForKey:@"numberOfPages"] intValue];
	_currentPage = [[respArray valueForKey:@"currentPage"] intValue];
	
	[self mapDataFromArray:_data];
	
}

- (void)mapDataFromArray:(NSArray *)arr
{
	switch (self.endPoint)
	{
		case LOCATIONS:
		case CITYSTATE:
			[self setBeers:nil];
			[self buildLocationsArrayFromArray:arr];
			break;
			
		case BEERS:
			[self setLocations:nil];
			[self buildBeersArrayFromArray:arr];
			break;
			
		default:
			break;
	}
}

- (void)buildLocationsArrayFromArray:(NSArray *)arr
{
	if (!_locations)
		_locations = [[NSMutableArray alloc] init];
	for (NSArray *locArr in arr)
	{
		[_locations addObject:[[Location alloc] initWithArray:locArr]];
	}
}

- (void)buildBeersArrayFromArray:(NSArray *)arr
{
	if (!_beers)
		_beers = [[NSMutableArray alloc] init];
	for (NSArray *beerArr in arr)
	{
		[_beers addObject:[[Beer alloc] initWithArray:beerArr]];
	}
}

@end
