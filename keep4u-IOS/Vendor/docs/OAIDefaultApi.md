# OAIDefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachmentsAttachmentIdDelete**](OAIDefaultApi.md#attachmentsattachmentiddelete) | **DELETE** /attachments/{attachment_id} | Delete attachment info by id
[**attachmentsAttachmentIdGet**](OAIDefaultApi.md#attachmentsattachmentidget) | **GET** /attachments/{attachment_id} | Get attachment info by id
[**attachmentsPost**](OAIDefaultApi.md#attachmentspost) | **POST** /attachments | Upload attachment to server
[**docksDockIdDelete**](OAIDefaultApi.md#docksdockiddelete) | **DELETE** /docks/{dock_id} | Delete dock by id
[**docksDockIdGet**](OAIDefaultApi.md#docksdockidget) | **GET** /docks/{dock_id} | Get dock by id
[**docksDockIdNotesGet**](OAIDefaultApi.md#docksdockidnotesget) | **GET** /docks/{dock_id}/notes | Get notes for dock
[**docksDockIdNotesPost**](OAIDefaultApi.md#docksdockidnotespost) | **POST** /docks/{dock_id}/notes | Create new note on dock
[**docksDockIdPut**](OAIDefaultApi.md#docksdockidput) | **PUT** /docks/{dock_id} | Replace dock
[**docksGet**](OAIDefaultApi.md#docksget) | **GET** /docks | Get user docks
[**docksPost**](OAIDefaultApi.md#dockspost) | **POST** /docks | Create new dock
[**notesNoteIdDelete**](OAIDefaultApi.md#notesnoteiddelete) | **DELETE** /notes/{note_id} | Delete dock by id
[**notesNoteIdGet**](OAIDefaultApi.md#notesnoteidget) | **GET** /notes/{note_id} | Get note by id
[**notesNoteIdPatch**](OAIDefaultApi.md#notesnoteidpatch) | **PATCH** /notes/{note_id} | Update note content


# **attachmentsAttachmentIdDelete**
```objc
-(NSURLSessionTask*) attachmentsAttachmentIdDeleteWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete attachment info by id

### Example 
```objc

NSString* attachmentId = @"attachmentId_example"; // UUID of attachment

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Delete attachment info by id
[apiInstance attachmentsAttachmentIdDeleteWithAttachmentId:attachmentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->attachmentsAttachmentIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| UUID of attachment | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsAttachmentIdGet**
```objc
-(NSURLSessionTask*) attachmentsAttachmentIdGetWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```

Get attachment info by id

### Example 
```objc

NSString* attachmentId = @"attachmentId_example"; // UUID of attachment

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get attachment info by id
[apiInstance attachmentsAttachmentIdGetWithAttachmentId:attachmentId
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->attachmentsAttachmentIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| UUID of attachment | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsPost**
```objc
-(NSURLSessionTask*) attachmentsPostWithBody: (NSURL*) body
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```

Upload attachment to server

### Example 
```objc

NSURL* body = [NSURL fileURLWithPath:@"/path/to/file"]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Upload attachment to server
[apiInstance attachmentsPostWithBody:body
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->attachmentsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSURL*****NSURL***|  | [optional] 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksDockIdDelete**
```objc
-(NSURLSessionTask*) docksDockIdDeleteWithDockId: (NSString*) dockId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete dock by id

### Example 
```objc

NSString* dockId = @"dockId_example"; // UUID of dock

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Delete dock by id
[apiInstance docksDockIdDeleteWithDockId:dockId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksDockIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dockId** | **NSString***| UUID of dock | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksDockIdGet**
```objc
-(NSURLSessionTask*) docksDockIdGetWithDockId: (NSString*) dockId
        completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;
```

Get dock by id

### Example 
```objc

NSString* dockId = @"dockId_example"; // UUID of dock

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get dock by id
[apiInstance docksDockIdGetWithDockId:dockId
          completionHandler: ^(OAIDock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksDockIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dockId** | **NSString***| UUID of dock | 

### Return type

[**OAIDock***](OAIDock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksDockIdNotesGet**
```objc
-(NSURLSessionTask*) docksDockIdNotesGetWithCompletionHandler: 
        (void (^)(OAINotes* output, NSError* error)) handler;
```

Get notes for dock

### Example 
```objc


OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get notes for dock
[apiInstance docksDockIdNotesGetWithCompletionHandler: 
          ^(OAINotes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksDockIdNotesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAINotes***](OAINotes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksDockIdNotesPost**
```objc
-(NSURLSessionTask*) docksDockIdNotesPostWithNote: (OAINote*) note
        completionHandler: (void (^)(OAINote* output, NSError* error)) handler;
```

Create new note on dock

### Example 
```objc

OAINote* note = [[OAINote alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Create new note on dock
[apiInstance docksDockIdNotesPostWithNote:note
          completionHandler: ^(OAINote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksDockIdNotesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **note** | [**OAINote***](OAINote.md)|  | [optional] 

### Return type

[**OAINote***](OAINote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksDockIdPut**
```objc
-(NSURLSessionTask*) docksDockIdPutWithDockId: (NSString*) dockId
    dock: (OAIDock*) dock
        completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;
```

Replace dock

Update dock description 

### Example 
```objc

NSString* dockId = @"dockId_example"; // UUID of dock
OAIDock* dock = [[OAIDock alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Replace dock
[apiInstance docksDockIdPutWithDockId:dockId
              dock:dock
          completionHandler: ^(OAIDock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksDockIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dockId** | **NSString***| UUID of dock | 
 **dock** | [**OAIDock***](OAIDock.md)|  | [optional] 

### Return type

[**OAIDock***](OAIDock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksGet**
```objc
-(NSURLSessionTask*) docksGetWithCompletionHandler: 
        (void (^)(OAIDocks* output, NSError* error)) handler;
```

Get user docks

Gets all docks for current user 

### Example 
```objc


OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get user docks
[apiInstance docksGetWithCompletionHandler: 
          ^(OAIDocks* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIDocks***](OAIDocks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **docksPost**
```objc
-(NSURLSessionTask*) docksPostWithDock: (OAIDock*) dock
        completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;
```

Create new dock

Create new dock for current user 

### Example 
```objc

OAIDock* dock = [[OAIDock alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Create new dock
[apiInstance docksPostWithDock:dock
          completionHandler: ^(OAIDock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->docksPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dock** | [**OAIDock***](OAIDock.md)|  | [optional] 

### Return type

[**OAIDock***](OAIDock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesNoteIdDelete**
```objc
-(NSURLSessionTask*) notesNoteIdDeleteWithNoteId: (NSString*) noteId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete dock by id

### Example 
```objc

NSString* noteId = @"noteId_example"; // UUID of note

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Delete dock by id
[apiInstance notesNoteIdDeleteWithNoteId:noteId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->notesNoteIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **NSString***| UUID of note | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesNoteIdGet**
```objc
-(NSURLSessionTask*) notesNoteIdGetWithNoteId: (NSString*) noteId
        completionHandler: (void (^)(OAINote* output, NSError* error)) handler;
```

Get note by id

### Example 
```objc

NSString* noteId = @"noteId_example"; // UUID of note

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get note by id
[apiInstance notesNoteIdGetWithNoteId:noteId
          completionHandler: ^(OAINote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->notesNoteIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **NSString***| UUID of note | 

### Return type

[**OAINote***](OAINote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesNoteIdPatch**
```objc
-(NSURLSessionTask*) notesNoteIdPatchWithNoteId: (NSString*) noteId
    body: (OAIBody*) body
        completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;
```

Update note content

### Example 
```objc

NSString* noteId = @"noteId_example"; // UUID of note
OAIBody* body = [[OAIBody alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Update note content
[apiInstance notesNoteIdPatchWithNoteId:noteId
              body:body
          completionHandler: ^(OAIDock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->notesNoteIdPatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **NSString***| UUID of note | 
 **body** | [**OAIBody***](OAIBody.md)|  | [optional] 

### Return type

[**OAIDock***](OAIDock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

