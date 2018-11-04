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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    OAIBoard* board = [[OAIBoard alloc] init]; //  (optional)
////    board._id = @"666";
//    board.title = @"wft";
//    board._description = @"amidoing";
//    board.ownerId = @"userId_example";
//
//    OAIDefaultApi* apiInstance = [[OAIDefaultApi alloc] init];
    
    // Create new board
//    [apiInstance boardsPostWithBoard:board
//                   completionHandler: ^(OAIBoard* output, NSError* error) {
//                       if (output) {
//                           NSLog(@"%@", output);
//                       }
//                       if (error) {
//                           NSLog(@"Error calling OAIDefaultApi->boardsPost: %@", error);
//                       }
//                   }];
//    
//    NSString* userId = @"userId_example"; // Google ClientID token
    
//    // Get user boards
//    [apiInstance boardsGetWithUserId:userId
//                   completionHandler: ^(OAIBoards* output, NSError* error) {
//                       if (output) {
//                           NSLog(@"%@", output);
//                       }
//                       if (error) {
//                           NSLog(@"Error calling OAIDefaultApi->boardsGet: %@", error);
//                       }
//                   }];

}

- (void)viewDidAppear:(BOOL)animated
{
    
//    if (Authenticated)...
    __weak id w_self = self;
    [self performSegueWithIdentifier:@"MainRoutine" sender:w_self];
}

@end
