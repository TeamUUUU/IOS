//
//  ViewController.m
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 25/10/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

#import "ViewController.h"

#import "Api.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* attachmentId = @"attachmentId_example"; // UUID of attachment
    
    OAIDefaultApi *apiInstance = [[OAIDefaultApi alloc] init];
    
    // Delete attachment info by id
    [apiInstance attachmentsAttachmentIdDeleteWithAttachmentId:attachmentId
                                             completionHandler: ^(NSError* error) {
                                                 if (error) {
                                                     NSLog(@"Error: %@", error);
                                                 }
                                             }];
}


@end
