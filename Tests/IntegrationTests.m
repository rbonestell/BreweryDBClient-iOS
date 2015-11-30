//
//  BreweryDBClientTests.m
//  BreweryDBClientTests
//

#import <XCTest/XCTest.h>
#import "BreweryDBClient.h"

@interface BreweryDBClientTests : XCTestCase

@property (nonatomic, retain) NSString *apiKey;

@end

@implementation BreweryDBClientTests

@synthesize apiKey = _apiKey;

- (void)setUp {
    [super setUp];
    
    // For integration tests, you'll need to insert your BreweryDB API Key here.
    _apiKey = @"";
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    BreweryDBClient *client = [[BreweryDBClient alloc] initWithAPIKey:_apiKey];
    BreweryDBRequest *req = [BreweryDBRequest getRequestLocationsForCity:@"" andState:@"Colorado"];
    BreweryDBResponse *resp = [client sendRequest:req];
    XCTAssertTrue(resp.totalResults == resp.locations.count, @"Locations count does not match total");
}

- (void)testBeers
{
    BreweryDBClient *client = [[BreweryDBClient alloc] initWithAPIKey:_apiKey];
    BreweryDBRequest *req = [BreweryDBRequest getRequestBeerByBrewery:@"vefvPr"];
    BreweryDBResponse *resp = [client sendRequest:req];
    XCTAssertTrue(resp.beers.count > 0, @"No results returned");
}

@end
