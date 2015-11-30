//
//  BeerStyle.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>

@interface BeerStyle : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;

- (id) initWithArray:(NSArray *)arr;

@end
