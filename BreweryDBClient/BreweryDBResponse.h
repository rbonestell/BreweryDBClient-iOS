//
//  BreweryDBResponse.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>
#import "Location.h"
#import "Beer.h"
#import "BreweryDBRequest.h"

@interface BreweryDBResponse : NSObject

@property (nonatomic) EndPoint endPoint;

@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) NSString *message;
@property (nonatomic, assign) int totalResults;
@property (nonatomic, assign) int currentPage;
@property (nonatomic, assign) int numberOfPages;
@property (nonatomic, retain) NSMutableArray *data;

@property (nonatomic, retain) NSMutableArray *locations;
@property (nonatomic, retain) NSMutableArray *beers;

- (id)initWithArray:(NSArray *)arr forEndPoint:(EndPoint)ep;
- (void)mergeResponse:(BreweryDBResponse *)resp;
- (void)mapFromRawResponseArray:(NSArray *)respArray;

@end
