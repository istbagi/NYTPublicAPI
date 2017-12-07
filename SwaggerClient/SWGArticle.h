#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGOrgFacet.h"
#import "SWGPerFacet.h"
#import "SWGDesFacet.h"
#import "SWGGeoFacet.h"


@protocol SWGArticle
@end

@interface SWGArticle : SWGObject


@property(nonatomic) NSString* url;

@property(nonatomic) NSString* column;

@property(nonatomic) NSString* section;

@property(nonatomic) NSString* byline;

@property(nonatomic) NSString* title;

@property(nonatomic) NSString* abstract;

@property(nonatomic) NSString* publishedDate;

@property(nonatomic) NSString* source;

@property(nonatomic) SWGDesFacet* desFacet;

@property(nonatomic) SWGOrgFacet* orgFacet;

@property(nonatomic) SWGPerFacet* perFacet;

@property(nonatomic) SWGGeoFacet* geoFacet;

@end
