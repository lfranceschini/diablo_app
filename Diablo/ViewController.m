//
//  ViewController.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "UserDao.h"
#import "JsonParser.h"

@interface ViewController (){
    UIActivityIndicatorView *indicatorView;
    UserDao *userDao;
    JsonParser *jsonParser;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    jsonParser = [[JsonParser alloc]init];
    indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [indicatorView setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    [self.view addSubview:indicatorView];
}

- (void)downloadUserInformationByBatlleTag:(NSString*)battleTag{
    userDao = [[UserDao alloc]init];
    __block User *user;
    [userDao getUserByBattleTag:nil andCompletionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if(!error){
            user = [jsonParser getUserInformationFromJsonString:data];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            //Enregistrer le User nouvellement logger
            NSLog(@"User battle tag : %@", user.battleTag);
            
            [indicatorView stopAnimating];
        });
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)logginButton:(id)sender {
    [indicatorView startAnimating];
    [self downloadUserInformationByBatlleTag:nil];
}
@end
