//
//  AmpView.m
//  arduiremote
//
//  Created by Abhishek Joshi on 21/10/14.
//  Copyright (c) 2014 Abhishek Joshi. All rights reserved.
//

#import "AmpView.h"

@interface AmpView ()

@end

@implementation AmpView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)aon:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?aon"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"AMPON";
}
- (IBAction)aoff:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?aoff"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"AMPOFF";
}
- (IBAction)aaux:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?aaux"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"AUX";
}
- (IBAction)acd:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?acd"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"CD";
}

- (IBAction)avup:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?avup"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"AMPVolume+";
}
- (IBAction)avdwn:(id)sender {
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?avdwn"]]];
    [[self view] addSubview:webView];
    self.ampStatus.text=@"AMPVolume-";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
