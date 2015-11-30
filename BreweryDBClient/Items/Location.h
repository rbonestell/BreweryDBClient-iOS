//
//  Location.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>
#import "Brewery.h"
#import "Country.h"

@interface Location : NSObject

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *streetAddress;
@property (nonatomic, retain) NSString *locality;
@property (nonatomic, retain) NSString *region;
@property (nonatomic, retain) NSString *postalCode;
@property (nonatomic, retain) NSString *phone;
@property (nonatomic, retain) NSString *website;
@property (nonatomic, retain) NSString *hoursOfOperation;
@property (nonatomic, retain) NSString *latitude;
@property (nonatomic, retain) NSString *longitude;
@property (nonatomic, retain) NSString *isPrimary;
@property (nonatomic, retain) NSString *inPlanning;
@property (nonatomic, retain) NSString *isClosed;
@property (nonatomic, retain) NSString *openToPublic;
@property (nonatomic, retain) NSString *locationType;
@property (nonatomic, retain) NSString *locationTypeDisplay;
@property (nonatomic, retain) NSString *countryIsoCode;
@property (nonatomic, retain) NSString *yearOpened;
@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) NSString *statusDisplay;
@property (nonatomic, retain) NSString *createDate;
@property (nonatomic, retain) NSString *updateDate;
@property (nonatomic, retain) NSString *breweryId;
@property (nonatomic, retain) NSString *distance;
@property (nonatomic, retain) Brewery *brewery;
@property (nonatomic, retain) Country *country;

- (id) initWithArray:(NSArray *)arr;

@end
