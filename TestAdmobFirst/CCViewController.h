//
//  CCViewController.h
//  TestAdmobFirst
//
//  Created by Shin Suo on 12-4-28.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"

@interface CCViewController : UIViewController <UIWebViewDelegate>
{
    GADBannerView *bannerView_;
}
@property (retain, nonatomic) UIWebView *webView;

- (IBAction)Dial:(id)sender;
- (IBAction)webLink:(id)sender;
@end
