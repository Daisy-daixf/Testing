//
//  ViewController.m
//  Fluct02
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
    
    ZucksBannerView *zbv = [[ZucksBannerView alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 48.0f)];
    [zbv setMediaID:ZUCKS_MEDIA_ID2];
    [self.view addSubview:zbv];
    [zbv release];
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
