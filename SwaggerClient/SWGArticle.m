#import "SWGArticle.h"

@implementation SWGArticle

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"url": @"url", @"column": @"column", @"section": @"section", @"byline": @"byline", @"title": @"title", @"abstract": @"abstract", @"published_date": @"publishedDate", @"source": @"source", @"des_facet": @"desFacet", @"org_facet": @"orgFacet", @"per_facet": @"perFacet", @"geo_facet": @"geoFacet" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"url", @"column", @"section", @"byline", @"title", @"abstract", @"publishedDate", @"source", @"desFacet", @"orgFacet", @"perFacet", @"geoFacet"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end