//
//  Images.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>

@interface Images : NSObject

@property (nonatomic, retain) NSString *icon;
@property (nonatomic, retain) NSString *medium;
@property (nonatomic, retain) NSString *large;

- (id) initWithArray:(NSArray *)arr;

@end
