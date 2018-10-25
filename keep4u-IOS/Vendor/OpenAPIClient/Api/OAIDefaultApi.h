#import <Foundation/Foundation.h>
#import "OAIAttachment.h"
#import "OAIBody.h"
#import "OAIDock.h"
#import "OAIDocks.h"
#import "OAIError.h"
#import "OAINote.h"
#import "OAINotes.h"
#import "OAIApi.h"

/**
* keep4u rest api
* keep4u backend rest api
*
* OpenAPI spec version: 0.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIDefaultApi: NSObject <OAIApi>

extern NSString* kOAIDefaultApiErrorDomain;
extern NSInteger kOAIDefaultApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Delete attachment info by id
/// 
///
/// @param attachmentId UUID of attachment
/// 
///  code:204 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return void
-(NSURLSessionTask*) attachmentsAttachmentIdDeleteWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get attachment info by id
/// 
///
/// @param attachmentId UUID of attachment
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIAttachment*
-(NSURLSessionTask*) attachmentsAttachmentIdGetWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;


/// Upload attachment to server
/// 
///
/// @param body  (optional)
/// 
///  code:201 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIAttachment*
-(NSURLSessionTask*) attachmentsPostWithBody: (NSURL*) body
    completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;


/// Delete dock by id
/// 
///
/// @param dockId UUID of dock
/// 
///  code:204 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return void
-(NSURLSessionTask*) docksDockIdDeleteWithDockId: (NSString*) dockId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get dock by id
/// 
///
/// @param dockId UUID of dock
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIDock*
-(NSURLSessionTask*) docksDockIdGetWithDockId: (NSString*) dockId
    completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;


/// Get notes for dock
/// 
///
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAINotes*
-(NSURLSessionTask*) docksDockIdNotesGetWithCompletionHandler: 
    (void (^)(OAINotes* output, NSError* error)) handler;


/// Create new note on dock
/// 
///
/// @param note  (optional)
/// 
///  code:201 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAINote*
-(NSURLSessionTask*) docksDockIdNotesPostWithNote: (OAINote*) note
    completionHandler: (void (^)(OAINote* output, NSError* error)) handler;


/// Replace dock
/// Update dock description 
///
/// @param dockId UUID of dock
/// @param dock  (optional)
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIDock*
-(NSURLSessionTask*) docksDockIdPutWithDockId: (NSString*) dockId
    dock: (OAIDock*) dock
    completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;


/// Get user docks
/// Gets all docks for current user 
///
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIDocks*
-(NSURLSessionTask*) docksGetWithCompletionHandler: 
    (void (^)(OAIDocks* output, NSError* error)) handler;


/// Create new dock
/// Create new dock for current user 
///
/// @param dock  (optional)
/// 
///  code:201 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIDock*
-(NSURLSessionTask*) docksPostWithDock: (OAIDock*) dock
    completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;


/// Delete dock by id
/// 
///
/// @param noteId UUID of note
/// 
///  code:204 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return void
-(NSURLSessionTask*) notesNoteIdDeleteWithNoteId: (NSString*) noteId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get note by id
/// 
///
/// @param noteId UUID of note
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAINote*
-(NSURLSessionTask*) notesNoteIdGetWithNoteId: (NSString*) noteId
    completionHandler: (void (^)(OAINote* output, NSError* error)) handler;


/// Update note content
/// 
///
/// @param noteId UUID of note
/// @param body  (optional)
/// 
///  code:200 message:"Ok",
///  code:500 message:"Server internal error"
///
/// @return OAIDock*
-(NSURLSessionTask*) notesNoteIdPatchWithNoteId: (NSString*) noteId
    body: (OAIBody*) body
    completionHandler: (void (^)(OAIDock* output, NSError* error)) handler;



@end
