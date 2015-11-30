//
//  BreweryDBRequest.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>

@interface BreweryDBRequest : NSObject
{
	NSMutableDictionary *parameters;
}

typedef enum { LOCATIONS, CITYSTATE, BEERS, BEERUPC } EndPoint;

@property (nonatomic, assign) EndPoint targetEndPoint;
@property (nonatomic, retain) NSString *breweryID;

- (id)init;
- (EndPoint) getEndpoint;
- (NSDictionary *) getParameters;
+ (BreweryDBRequest *) getRequestLocationsForCity:(NSString *)city andState:(NSString *)state;
+ (BreweryDBRequest *) getRequestLocationsSearchByLat:(NSString *)lat Lon:(NSString *)lng forRadius:(NSString *)radius;
+ (BreweryDBRequest *) getRequestBeerByBrewery:(NSString *)bID;
- (void) setRequestPage:(NSString *)pageNo;

@end
