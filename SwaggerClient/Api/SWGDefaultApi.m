#import "SWGDefaultApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGInlineResponse200.h"
#import "SWGInlineResponse2001.h"
#import "SWGInlineResponse400.h"


@interface SWGDefaultApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGDefaultApi

NSString* kSWGDefaultApiErrorDomain = @"SWGDefaultApiErrorDomain";
NSInteger kSWGDefaultApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Most Emailed by Section & Time Period
/// 
///  @param section Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.   
///
///  @param timePeriod Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content. 
///
///  @returns SWGInlineResponse2001*
///
-(NSURLSessionTask*) gETMostemailedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
    completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler {
    // verify the required parameter 'section' is set
    if (section == nil) {
        NSParameterAssert(section);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"section"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timePeriod' is set
    if (timePeriod == nil) {
        NSParameterAssert(timePeriod);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timePeriod"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mostemailed/{section}/{time-period}.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (section != nil) {
        pathParams[@"section"] = section;
    }
    if (timePeriod != nil) {
        pathParams[@"time-period"] = timePeriod;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"api-key"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse2001*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse2001*)data, error);
                                }
                            }];
}

///
/// Most Shared by Section & Time Period
/// 
///  @param section Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.   
///
///  @param timePeriod Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content. 
///
///  @returns SWGInlineResponse200*
///
-(NSURLSessionTask*) gETMostsharedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
    completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler {
    // verify the required parameter 'section' is set
    if (section == nil) {
        NSParameterAssert(section);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"section"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timePeriod' is set
    if (timePeriod == nil) {
        NSParameterAssert(timePeriod);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timePeriod"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mostshared/{section}/{time-period}.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (section != nil) {
        pathParams[@"section"] = section;
    }
    if (timePeriod != nil) {
        pathParams[@"time-period"] = timePeriod;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"api-key"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse200*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse200*)data, error);
                                }
                            }];
}

///
/// Most Viewed by Section & Time Period
/// 
///  @param section Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.   
///
///  @param timePeriod Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content. 
///
///  @returns SWGInlineResponse200*
///
-(NSURLSessionTask*) gETMostviewedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
    completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler {
    // verify the required parameter 'section' is set
    if (section == nil) {
        NSParameterAssert(section);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"section"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timePeriod' is set
    if (timePeriod == nil) {
        NSParameterAssert(timePeriod);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timePeriod"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mostviewed/{section}/{time-period}.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (section != nil) {
        pathParams[@"section"] = section;
    }
    if (timePeriod != nil) {
        pathParams[@"time-period"] = timePeriod;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"api-key"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse200*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse200*)data, error);
                                }
                            }];
}



@end
