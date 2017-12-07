# SWGDefaultApi

All URIs are relative to *http://api.nytimes.com/svc/mostpopular/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gETMostemailedSectionTimePeriodJson**](SWGDefaultApi.md#getmostemailedsectiontimeperiodjson) | **GET** /mostemailed/{section}/{time-period}.json | Most Emailed by Section &amp; Time Period
[**gETMostsharedSectionTimePeriodJson**](SWGDefaultApi.md#getmostsharedsectiontimeperiodjson) | **GET** /mostshared/{section}/{time-period}.json | Most Shared by Section &amp; Time Period
[**gETMostviewedSectionTimePeriodJson**](SWGDefaultApi.md#getmostviewedsectiontimeperiodjson) | **GET** /mostviewed/{section}/{time-period}.json | Most Viewed by Section &amp; Time Period


# **gETMostemailedSectionTimePeriodJson**
```objc
-(NSURLSessionTask*) gETMostemailedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler;
```

Most Emailed by Section & Time Period



### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api-key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* section = @"section_example"; // Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.  
NSString* timePeriod = @"timePeriod_example"; // Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content.

SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

// Most Emailed by Section & Time Period
[apiInstance gETMostemailedSectionTimePeriodJsonWithSection:section
              timePeriod:timePeriod
          completionHandler: ^(SWGInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->gETMostemailedSectionTimePeriodJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **NSString***| Limits the results by one or more sections. You can use &#x60;all-sections&#x60; or one or more section names seperated by semicolons. See &#x60;viewed/sections.json&#x60; call to get a list of sections.   | 
 **timePeriod** | **NSString***| Number of days &#x60;1 | 7 | 30 &#x60; corresponds to a day, a week, or a month of content. | 

### Return type

[**SWGInlineResponse2001***](SWGInlineResponse2001.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gETMostsharedSectionTimePeriodJson**
```objc
-(NSURLSessionTask*) gETMostsharedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Most Shared by Section & Time Period



### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api-key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* section = @"section_example"; // Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.  
NSString* timePeriod = @"timePeriod_example"; // Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content.

SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

// Most Shared by Section & Time Period
[apiInstance gETMostsharedSectionTimePeriodJsonWithSection:section
              timePeriod:timePeriod
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->gETMostsharedSectionTimePeriodJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **NSString***| Limits the results by one or more sections. You can use &#x60;all-sections&#x60; or one or more section names seperated by semicolons. See &#x60;viewed/sections.json&#x60; call to get a list of sections.   | 
 **timePeriod** | **NSString***| Number of days &#x60;1 | 7 | 30 &#x60; corresponds to a day, a week, or a month of content. | 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gETMostviewedSectionTimePeriodJson**
```objc
-(NSURLSessionTask*) gETMostviewedSectionTimePeriodJsonWithSection: (NSString*) section
    timePeriod: (NSString*) timePeriod
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Most Viewed by Section & Time Period



### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api-key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* section = @"section_example"; // Limits the results by one or more sections. You can use `all-sections` or one or more section names seperated by semicolons. See `viewed/sections.json` call to get a list of sections.  
NSString* timePeriod = @"timePeriod_example"; // Number of days `1 | 7 | 30 ` corresponds to a day, a week, or a month of content.

SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

// Most Viewed by Section & Time Period
[apiInstance gETMostviewedSectionTimePeriodJsonWithSection:section
              timePeriod:timePeriod
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->gETMostviewedSectionTimePeriodJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **NSString***| Limits the results by one or more sections. You can use &#x60;all-sections&#x60; or one or more section names seperated by semicolons. See &#x60;viewed/sections.json&#x60; call to get a list of sections.   | 
 **timePeriod** | **NSString***| Number of days &#x60;1 | 7 | 30 &#x60; corresponds to a day, a week, or a month of content. | 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

