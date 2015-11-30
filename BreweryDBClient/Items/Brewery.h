//
//  Brewery.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>
#import "Images.h"

@interface Brewery : NSObject

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *website;
@property (nonatomic, retain) NSString *established;
@property (nonatomic, retain) NSString *isOrganic;
@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) NSString *statusDisplay;
@property (nonatomic, retain) NSString *createDate;
@property (nonatomic, retain) NSString *updateDate;
@property (nonatomic, retain) Images *images;

- (id) initWithArray:(NSArray *)arr;

@end
