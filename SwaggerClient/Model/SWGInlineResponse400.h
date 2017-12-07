#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Most Popular API
* Get lists of NYT Articles based on shares, emails, and views.
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol SWGInlineResponse400
@end

@interface SWGInlineResponse400 : SWGObject


@property(nonatomic) NSString *status;

@property(nonatomic) NSString *varCopyright;

@property(nonatomic) NSArray<NSString *> *errors;

@property(nonatomic) NSArray<NSString *> *results;

@end
