//
//  CCViewController.m
//  TestAdmobFirst
//
//  Created by Shin Suo on 12-4-28.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import "CCViewController.h"

#define MY_ADMOB_ID @"a14f9bdedb5a6d7"

@implementation CCViewController
@synthesize webView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    bannerView_.adUnitID = MY_ADMOB_ID;
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    [bannerView_ loadRequest:[GADRequest request]];
    
    
    [self.webView loadHTMLString:@"<a href=http://www.baidu.com'>baidu</a>" baseURL:nil];
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)Dial:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt:10086"]];
    UINavigationController *navigationController = self.navigationController;
//    [navigationController presentModalViewController: animated:YES]
}

- (IBAction)webLink:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];
}
- (void)dealloc {
    [webView release];
    [super dealloc];
}

#pragma mark UIWebView Delegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{

}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{

}

@end
