# OAIDefaultApi

All URIs are relative to *http://188.246.233.13:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachmentsAttachmentIdDelete**](OAIDefaultApi.md#attachmentsattachmentiddelete) | **DELETE** /attachments/{attachment_id} | Delete attachment info by id
[**attachmentsAttachmentIdGet**](OAIDefaultApi.md#attachmentsattachmentidget) | **GET** /attachments/{attachment_id} | Get attachment info by id
[**attachmentsPost**](OAIDefaultApi.md#attachmentspost) | **POST** /attachments | Upload attachment to server
[**boardsBoardIdCollaboratorsPatch**](OAIDefaultApi.md#boardsboardidcollaboratorspatch) | **PATCH** /boards/{board_id}/collaborators | 
[**boardsBoardIdDelete**](OAIDefaultApi.md#boardsboardiddelete) | **DELETE** /boards/{board_id} | Delete board by id
[**boardsBoardIdGet**](OAIDefaultApi.md#boardsboardidget) | **GET** /boards/{board_id} | Get board by id
[**boardsBoardIdNotesGet**](OAIDefaultApi.md#boardsboardidnotesget) | **GET** /boards/{board_id}/notes | Get notes for board
[**boardsBoardIdNotesPost**](OAIDefaultApi.md#boardsboardidnotespost) | **POST** /boards/{board_id}/notes | Create new note on board
[**boardsBoardIdPatch**](OAIDefaultApi.md#boardsboardidpatch) | **PATCH** /boards/{board_id} | Update board parameters
[**boardsGet**](OAIDefaultApi.md#boardsget) | **GET** /boards | Get user boards
[**boardsPost**](OAIDefaultApi.md#boardspost) | **POST** /boards | Create new board
[**notesNoteIdDelete**](OAIDefaultApi.md#notesnoteiddelete) | **DELETE** /notes/{note_id} | Delete note by id
[**notesNoteIdGet**](OAIDefaultApi.md#notesnoteidget) | **GET** /notes/{note_id} | Get note by id
[**notesNoteIdPatch**](OAIDefaultApi.md#notesnoteidpatch) | **PATCH** /notes/{note_id} | Update note content
[**searchNotesGet**](OAIDefaultApi.md#searchnotesget) | **GET** /search/notes | Search notes by related text


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
-(NSURLSessionTask*) attachmentsPostWithFile: (NSURL*) file
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```

Upload attachment to server

### Example 
```objc

NSURL* file = [NSURL fileURLWithPath:@"/path/to/file"]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Upload attachment to server
[apiInstance attachmentsPostWithFile:file
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
 **file** | **NSURL*****NSURL***|  | [optional] 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsBoardIdCollaboratorsPatch**
```objc
-(NSURLSessionTask*) boardsBoardIdCollaboratorsPatchWithRequestBody: (NSArray<NSString*>*) requestBody
        completionHandler: (void (^)(OAICollaborators* output, NSError* error)) handler;
```



Adds collaborators to board. Returns all board's collaborators.

### Example 
```objc

NSArray<NSString*>* requestBody = @[[[NSArray alloc] init]]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance boardsBoardIdCollaboratorsPatchWithRequestBody:requestBody
          completionHandler: ^(OAICollaborators* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdCollaboratorsPatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**NSArray&lt;NSString*&gt;***](NSArray.md)|  | [optional] 

### Return type

[**OAICollaborators***](OAICollaborators.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsBoardIdDelete**
```objc
-(NSURLSessionTask*) boardsBoardIdDeleteWithBoardId: (NSString*) boardId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete board by id

### Example 
```objc

NSString* boardId = @"boardId_example"; // UUID of board

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Delete board by id
[apiInstance boardsBoardIdDeleteWithBoardId:boardId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boardId** | **NSString***| UUID of board | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsBoardIdGet**
```objc
-(NSURLSessionTask*) boardsBoardIdGetWithBoardId: (NSString*) boardId
        completionHandler: (void (^)(OAIBoard* output, NSError* error)) handler;
```

Get board by id

### Example 
```objc

NSString* boardId = @"boardId_example"; // UUID of board

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get board by id
[apiInstance boardsBoardIdGetWithBoardId:boardId
          completionHandler: ^(OAIBoard* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boardId** | **NSString***| UUID of board | 

### Return type

[**OAIBoard***](OAIBoard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsBoardIdNotesGet**
```objc
-(NSURLSessionTask*) boardsBoardIdNotesGetWithCompletionHandler: 
        (void (^)(OAINotes* output, NSError* error)) handler;
```

Get notes for board

### Example 
```objc


OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get notes for board
[apiInstance boardsBoardIdNotesGetWithCompletionHandler: 
          ^(OAINotes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdNotesGet: %@", error);
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

# **boardsBoardIdNotesPost**
```objc
-(NSURLSessionTask*) boardsBoardIdNotesPostWithNote: (OAINote*) note
        completionHandler: (void (^)(OAINote* output, NSError* error)) handler;
```

Create new note on board

### Example 
```objc

OAINote* note = [[OAINote alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Create new note on board
[apiInstance boardsBoardIdNotesPostWithNote:note
          completionHandler: ^(OAINote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdNotesPost: %@", error);
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

# **boardsBoardIdPatch**
```objc
-(NSURLSessionTask*) boardsBoardIdPatchWithBoardId: (NSString*) boardId
    board: (OAIBoard*) board
        completionHandler: (void (^)(OAIBoard* output, NSError* error)) handler;
```

Update board parameters

Update board parameters. Note: collaborators array will be replaced by this method. Use /boards/{board_id}/collaborators if you want to append collaborators to board. 

### Example 
```objc

NSString* boardId = @"boardId_example"; // UUID of board
OAIBoard* board = [[OAIBoard alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Update board parameters
[apiInstance boardsBoardIdPatchWithBoardId:boardId
              board:board
          completionHandler: ^(OAIBoard* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsBoardIdPatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boardId** | **NSString***| UUID of board | 
 **board** | [**OAIBoard***](OAIBoard.md)|  | [optional] 

### Return type

[**OAIBoard***](OAIBoard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsGet**
```objc
-(NSURLSessionTask*) boardsGetWithUserId: (NSString*) userId
        completionHandler: (void (^)(OAIBoards* output, NSError* error)) handler;
```

Get user boards

Gets all boards for current user 

### Example 
```objc

NSString* userId = @"userId_example"; // Google ClientID token

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get user boards
[apiInstance boardsGetWithUserId:userId
          completionHandler: ^(OAIBoards* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| Google ClientID token | 

### Return type

[**OAIBoards***](OAIBoards.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **boardsPost**
```objc
-(NSURLSessionTask*) boardsPostWithUserId: (NSString*) userId
    board: (OAIBoard*) board
        completionHandler: (void (^)(OAIBoard* output, NSError* error)) handler;
```

Create new board

Create new board for current user 

### Example 
```objc

NSString* userId = @"userId_example"; // Google ClientID token
OAIBoard* board = [[OAIBoard alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Create new board
[apiInstance boardsPostWithUserId:userId
              board:board
          completionHandler: ^(OAIBoard* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->boardsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| Google ClientID token | 
 **board** | [**OAIBoard***](OAIBoard.md)|  | [optional] 

### Return type

[**OAIBoard***](OAIBoard.md)

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

Delete note by id

### Example 
```objc

NSString* noteId = @"noteId_example"; // UUID of note

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Delete note by id
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
    noteUpdate: (OAINoteUpdate*) noteUpdate
        completionHandler: (void (^)(OAINote* output, NSError* error)) handler;
```

Update note content

### Example 
```objc

NSString* noteId = @"noteId_example"; // UUID of note
OAINoteUpdate* noteUpdate = [[OAINoteUpdate alloc] init]; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Update note content
[apiInstance notesNoteIdPatchWithNoteId:noteId
              noteUpdate:noteUpdate
          completionHandler: ^(OAINote* output, NSError* error) {
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
 **noteUpdate** | [**OAINoteUpdate***](OAINoteUpdate.md)|  | [optional] 

### Return type

[**OAINote***](OAINote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNotesGet**
```objc
-(NSURLSessionTask*) searchNotesGetWithText: (NSString*) text
    limit: (NSNumber*) limit
    asc: (NSNumber*) asc
        completionHandler: (void (^)(OAINotes* output, NSError* error)) handler;
```

Search notes by related text

### Example 
```objc

NSString* text = @"text_example"; // 
NSNumber* limit = @10; // text to be searched in notes (optional) (default to @10)
NSNumber* asc = @(NO); // should notes be returned in descending(default) or ascending order. (optional) (default to @(NO))

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search notes by related text
[apiInstance searchNotesGetWithText:text
              limit:limit
              asc:asc
          completionHandler: ^(OAINotes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchNotesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **NSString***|  | 
 **limit** | **NSNumber***| text to be searched in notes | [optional] [default to @10]
 **asc** | **NSNumber***| should notes be returned in descending(default) or ascending order. | [optional] [default to @(NO)]

### Return type

[**OAINotes***](OAINotes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

