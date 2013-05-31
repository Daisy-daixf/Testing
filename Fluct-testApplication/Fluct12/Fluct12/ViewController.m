//
//  ViewController.m
//  Fluct12
//
//  Created by  on 12/05/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "ZucksAdnet.h"
#import "ZucksBannerView.h"

@interface ViewController ()

@end

@implementation ViewController

-(UILabel*)makeLabel:(CGPoint)pos text:(NSString*)text font:(UIFont*)font{
    CGSize size = [text sizeWithFont:font];
    CGRect rect = CGRectMake(pos.x, pos.y, size.width, size.height);
    
    UILabel *label=[[[UILabel alloc]init]autorelease];
    [label setFrame:rect];
    [label setText:text];
    [label setFont:font];
    [label setTextColor:[UIColor blackColor]];
    [label setTextAlignment:UITextAlignmentLeft];
    [label setNumberOfLines:0];
    [label setLineBreakMode:UILineBreakModeWordWrap];
    [label setBackgroundColor:[UIColor clearColor]];
    return label;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[ZucksAdnet sharedInstance]setBannerConfiguration:ZUCKS_MEDIA_ID orientationType:@"Rotatable"];
    
    ZucksBannerView *bannerView = [[ZucksBannerView alloc]init];
    [self.view addSubview:bannerView];
    [bannerView release];

    ZucksBannerView *bannerView2 = [[ZucksBannerView alloc]initWithFrame:CGRectMake(0, 200, 320, 250)];
    [bannerView2 setMediaID:ZUCKS_MEDIA_ID2];
    [self.view addSubview:bannerView2];
    [bannerView2 release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
