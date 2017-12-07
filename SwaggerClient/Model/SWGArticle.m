#import "SWGArticle.h"

@implementation SWGArticle

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"url": @"url", @"column": @"column", @"section": @"section", @"byline": @"byline", @"title": @"title", @"abstract": @"abstract", @"publishedDate": @"published_date", @"source": @"source", @"desFacet": @"des_facet", @"orgFacet": @"org_facet", @"perFacet": @"per_facet", @"geoFacet": @"geo_facet" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"url", @"column", @"section", @"byline", @"title", @"abstract", @"publishedDate", @"source", @"desFacet", @"orgFacet", @"perFacet", @"geoFacet"];
  return [optionalProperties containsObject:propertyName];
}

@end
