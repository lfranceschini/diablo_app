//
//  ViewController.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "ViewController.h"
#import "HTTPClient.h"
#import "User.h"
#import "Hero.h"
#import "HeroClass.h"

@interface ViewController (){
    UIActivityIndicatorView *indicatorView;
    NSURLSessionConfiguration *sessionConfig;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [indicatorView setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    [self.view addSubview:indicatorView];
    [indicatorView startAnimating];
    sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig.allowsCellularAccess = YES;
    [sessionConfig setHTTPAdditionalHeaders:@{@"Accept": @"application/json"}];
    [self downloadData];
}

- (void)downloadData{
    NSString *url = @"https://eu.api.battle.net/d3/profile/Alpha%231935/?locale=fr_FR&apikey=kppra467my6qzf7bxcxhk8qtsgmx78gt";
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:self delegateQueue:nil];
    NSURLSessionDataTask *jsonData = [session dataTaskWithURL: [NSURL URLWithString:url]
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                if(!error){
                                                    User *user = [[User alloc] init];
                                                    HeroClass *heroClass = [[HeroClass alloc]init];
                                                    id jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                                    user.battleTag = jsonResponse[@"battleTag"];
                                                    user.paragonLevel = jsonResponse[@"paragonLevel"];
                                                    NSDictionary *hereos = jsonResponse[@"heroes"];
                                                    for(NSDictionary *h in hereos){
                                                        Hero *hero = [[Hero alloc]init];
                                                        hero.name = [h valueForKey:@"name"];
                                                        hero.level = [h valueForKey:@"level"];
                                                        heroClass.name = [h valueForKey:@"class"];
                                                        hero.heroClass = heroClass;
                                                        
                                                        NSLog(@"Name : %@", hero.name);
                                                        NSLog(@"Class : %@", hero.heroClass.name);
                                                    }
                                                    NSLog(@"BattleTag : %@", user.battleTag);
                                                    
                                                }
                                                dispatch_async(dispatch_get_main_queue(), ^{
                                                    [indicatorView stopAnimating];
                                                });
                                            }];
    [jsonData resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
