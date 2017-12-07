#import "SWGArticleWithCountType.h"

@implementation SWGArticleWithCountType

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"url": @"url", @"countType": @"count_type", @"column": @"column", @"section": @"section", @"byline": @"byline", @"title": @"title", @"abstract": @"abstract", @"publishedDate": @"published_date", @"source": @"source", @"desFacet": @"des_facet", @"orgFacet": @"org_facet", @"perFacet": @"per_facet", @"geoFacet": @"geo_facet", @"media": @"media" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"url", @"countType", @"column", @"section", @"byline", @"title", @"abstract", @"publishedDate", @"source", @"desFacet", @"orgFacet", @"perFacet", @"geoFacet", @"media"];
  return [optionalProperties containsObject:propertyName];
}

@end
