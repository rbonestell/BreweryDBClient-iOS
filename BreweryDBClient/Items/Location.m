//
//  Location.m
//  BreweryDBClient
//

#import "Location.h"

@implementation Location

@synthesize id = _id;
@synthesize name = _name;
@synthesize streetAddress = _streetAddress;
@synthesize locality = _locality;
@synthesize region = _region;
@synthesize postalCode = _postalCode;
@synthesize phone = _phone;
@synthesize website = _website;
@synthesize hoursOfOperation = _hoursOfOperation;
@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize isPrimary = _isPrimary;
@synthesize inPlanning = _inPlanning;
@synthesize isClosed = _isClosed;
@synthesize openToPublic = _openToPublic;
@synthesize locationType = _locationType;
@synthesize locationTypeDisplay = _locationTypeDisplay;
@synthesize countryIsoCode = _countryIsoCode;
@synthesize yearOpened = _yearOpened;
@synthesize status = _status;
@synthesize statusDisplay = _statusDisplay;
@synthesize createDate = _createDate;
@synthesize updateDate = _updateDate;
@synthesize breweryId = _breweryId;
@synthesize distance = _distance;
@synthesize brewery = _brewery;
@synthesize country = _country;

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
	_streetAddress = [arr valueForKey:@"streetAddress"];
	_locality = [arr valueForKey:@"locality"];
	_region = [arr valueForKey:@"region"];
	_postalCode = [arr valueForKey:@"postalCode"];
	_phone = [arr valueForKey:@"phone"];
	_website = [arr valueForKey:@"website"];
	_hoursOfOperation = [arr valueForKey:@"hoursOfOperation"];
	_latitude = [arr valueForKey:@"latitude"];
	_longitude = [arr valueForKey:@"longitude"];
	_isPrimary = [arr valueForKey:@"isPrimary"];
	_inPlanning = [arr valueForKey:@"inPlanning"];
	_isClosed = [arr valueForKey:@"isClosed"];
	_openToPublic = [arr valueForKey:@"openToPublic"];
	_locationType = [arr valueForKey:@"locationType"];
	_locationTypeDisplay = [arr valueForKey:@"locationTypeDisplay"];
	_countryIsoCode = [arr valueForKey:@"countryIsoCode"];
	_yearOpened = [arr valueForKey:@"yearOpened"];
	_status = [arr valueForKey:@"status"];
	_statusDisplay = [arr valueForKey:@"statusDisplay"];
	_createDate = [arr valueForKey:@"createDate"];
	_updateDate = [arr valueForKey:@"updateDate"];
	_breweryId = [arr valueForKey:@"breweryId"];
	_distance = [arr valueForKey:@"distance"];
	_brewery = [[Brewery alloc] initWithArray:[arr valueForKey:@"brewery"]];
	_country = [[Country alloc] initWithArray:[arr valueForKey:@"country"]];
}

@end
