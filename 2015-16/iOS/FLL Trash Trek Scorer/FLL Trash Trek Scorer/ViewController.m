//
//  ViewController.m
//  Trash Trek Scorer
//
//  Created by Sanjay Seshan on 8/31/15.
//  Copyright (c) 2015 EV3Lessons.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// An example viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
    //   self.webView.scalesPageToFit = YES;
    //  _webView.frame = CGRectMake(0.0, 0.0, 200.0, 700.0);
    
    
    NSString *userLocale = [[NSLocale currentLocale] localeIdentifier];
    NSString *userLanguage = [userLocale substringToIndex:2];
    
    if([userLanguage isEqualToString:@"en"]){
     [self loadWebView];
    }
    else if([userLanguage isEqualToString:@"pt"]){
        //Spanish
        [self loadWebViewpt];

    }
    else if([userLanguage isEqualToString:@"pt-br"]){
        //French
        [self loadWebViewpt];

    }
    else {
        //French
        [self loadWebView];
        
    }}

// The example loader
//
// Assumes you have an IBOutlet for the UIWebView defined:  @property (strong, nonatomic) UIWebView *wv;
- (void)loadWebView {
    // Remember that bundle resources do *not* have directories so all filenames must be unique.
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *homeIndexUrl = [mainBundle URLForResource:@"www/index" withExtension:@"html"];
    _webView = [UIWebView new];
    _webView.frame = self.view.bounds;
    [self.view addSubview:self.webView];
    // The magic is loading a request, *not* using loadHTMLString:baseURL:
    NSURLRequest *urlReq = [NSURLRequest requestWithURL:homeIndexUrl];
    self.webView.mediaPlaybackRequiresUserAction = NO;
    [self.webView loadRequest:urlReq];
}


- (void)loadWebViewpt {
    // Remember that bundle resources do *not* have directories so all filenames must be unique.
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *homeIndexUrl2 = [mainBundle URLForResource:@"wwwpt/index" withExtension:@"html"];
    _ptbr = [UIWebView new];
    _ptbr.frame = self.view.bounds;
    [self.view addSubview:self.ptbr];
    // The magic is loading a request, *not* using loadHTMLString:baseURL:
    NSURLRequest *urlReq = [NSURLRequest requestWithURL:homeIndexUrl2];
    self.ptbr.mediaPlaybackRequiresUserAction = NO;
    [self.ptbr loadRequest:urlReq];
}
@end
