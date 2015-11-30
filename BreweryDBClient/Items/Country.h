//
//  Country.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (nonatomic, retain) NSString *isoCode;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *displayName;
@property (nonatomic, retain) NSString *isoThree;
@property (nonatomic, retain) NSString *numberCode;
@property (nonatomic, retain) NSString *urlTitle;
@property (nonatomic, retain) NSString *createDate;

- (id) initWithArray:(NSArray *)arr;

@end
