//
//  Beer.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>
#import "BeerStyle.h"

@interface Beer : NSObject

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *abv;
@property (nonatomic, retain) NSString *ibu;
@property (nonatomic, retain) BeerStyle *style;

- (id) initWithArray:(NSArray *)arr;

@end
