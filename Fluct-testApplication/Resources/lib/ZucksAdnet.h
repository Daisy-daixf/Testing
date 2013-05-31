//
//  ZucksAdnet.h
//  ZucksAdnet
//
//  Zucks Adnet SDK
//  Copyright 2011 Zucks, Inc. All rights reserved.
//

/*
 * ZuckAdnetSDKの各処理を行う
 * ・コンバージョン通知処理
 * ・広告表示設定 (表示処理はZucksBannerViewにて行われる)
 */

#import <UIKit/UIKit.h>

@interface ZucksAdnet : NSObject

@property (nonatomic, copy) NSString* _applicationId;
+ (id)sharedInstance;

/* 
 * [デバッグモード]
 * 
 * arguments:
 * (BOOL)dbg  :デバッグモード(YES/NO)
 */
//-(void)setDebugMode:(BOOL)dbg;


/* 
 * setBannerConfiguration
 * 広告表示設定を行う
 * ZucksBannerViewのインスタンス生成前にコールします
 *
 * arguments:
 * (NSString*)mediaId : ユーザ設定の10桁の文字列
 * (NSString*)orientationType :orientationType 
 * : 回転の有無[Rotatable/Portrait/PortraitUpsideDown/LandScapeLeft/LandScapeRight]の文字列
 * + アプリ側で表示方向を固定する場合... Rotatable
 * + アプリ側で回転を許可する場合   ... 以下の文字列を定義してください。
 *                                Portrait (通常固定)
 *                                PortraitUpsideDown (180°反転固定)
 *                                LandScapeLeft (左固定)
 *                                LandScapeRight (右固定)
 */
-(void)setBannerConfiguration:(NSString*)mediaId orientationType:(NSString*)orientationType;

/* 
 * [コンバージョン通知処理]
 * アプリケーション起動時に実行します
 *
 * arguments:
 * (NSString*)mediaId : ユーザ設定の10桁の文字列
 */
-(void)setConversion:(NSString*)mediaId;

/* 
 * [デモグラ情報設定]
 *　ウェブビュー用デモグラ情報を設定
 *
 * arguments:
 * (NSString*)key   :   デモグラのキー名　（sex、age）
 * (NSString*)value :   デモグラ値
 */
- (void)setDemogura:(NSString *)key withValue:(NSString *)value; 
@end