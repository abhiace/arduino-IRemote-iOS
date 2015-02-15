//
//  NumericView.m
//  arduiremote
//
//  Created by Abhishek Joshi on 20/10/14.
//  Copyright (c) 2014 Abhishek Joshi. All rights reserved.
//

#import "NumericView.h"

@interface NumericView ()

@end

@implementation NumericView

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)ch1:(id)sender {
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch1"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"1";
    }
    else{
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"1"];
    }

}
- (IBAction)ch2:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch2"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"2";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"2"];
    }

}

- (IBAction)ch3:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch3"]]];
    [[self view] addSubview:webView];
   
    if ([self.numericLabel.text length] == 3) {
        self.numericLabel.text = @"3";
    }
    
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"3"];
    }
}
- (IBAction)ch4:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch4"]]];
    [[self view] addSubview:webView];
   
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"4";
    }
    else
    {
        self.numericLabel.text = [ self.numericLabel.text stringByAppendingString:@"4"];
    }
}

- (IBAction)ch5:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch5"]]];
    [[self view] addSubview:webView];
    
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"5";
    }
    else{
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"5"];
    }
}
- (IBAction)ch6:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch6"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"6";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"6"];
    }
}
- (IBAction)ch7:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch7"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"7";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"7"];
    }
}
- (IBAction)ch8:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch8"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length] == 3) {
        self.numericLabel.text = @"8";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"8"];
    }
}
- (IBAction)ch9:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch9"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"9";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"9"];
    }
}
- (IBAction)ch0:(id)sender {
    
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?ch0"]]];
    [[self view] addSubview:webView];
    if ([self.numericLabel.text length]==3) {
        self.numericLabel.text = @"0";
    }
    else
    {
        self.numericLabel.text = [self.numericLabel.text stringByAppendingString:@"0"];
    }
}


@end
