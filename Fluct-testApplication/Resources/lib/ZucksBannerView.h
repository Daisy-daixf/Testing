//
//  ZucksBannerView.h
//  ZucksAdnet
//
//  Zucks Adnet SDK
//  Copyright 2011 Zucks, Inc. All rights reserved.
//

/*
 * バナー広告表示を行う
 * 事前にZucksAdnetで表示設定処理を行う必要があります
 */

#import <UIKit/UIKit.h>

@class BannerWebView;

@interface ZucksBannerView : UIView
{
@private
    BannerWebView *_bannerWebView;
    BOOL _initialized;
}

- (void)setMediaID:(NSString *)mediaID;

@end
