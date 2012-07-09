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
    NSMutableArray *array;
    NSString *currentName;
}
@property (retain, nonatomic) UIWebView *webView;
@property (retain, nonatomic) IBOutlet UITextField *admob_id;
- (IBAction)addAdmobID:(id)sender;

- (IBAction)Dial:(id)sender;
- (IBAction)webLink:(id)sender;
@end
