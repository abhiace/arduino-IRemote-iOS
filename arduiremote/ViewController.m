//
//  ViewController.m
//  arduiremote
//
//  Created by Abhishek Joshi on 18/10/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [self setMyWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)power:(id)sender {
   /* //Send power code
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?pwr"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];*/
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?pwr"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Power";
    
}

- (IBAction)mute:(id)sender {
    
    /*//Send mute code
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?mute"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];
    self.statusLabel.text=@"Mute";
    */
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?mute"]]];
    [[self view] addSubview:webView];
    
    self.statusLabel.text=@"Mute";
}
- (IBAction)chup:(id)sender {
    
    /*
    //Send chup code
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?cup"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];
    */
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?cup"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Channel+";
}
- (IBAction)vup:(id)sender {
    
   /* //Send volume up code
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?vup"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];*/
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?vup"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Volume+";
}
- (IBAction)chdown:(id)sender {
    
    /*
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?cdwn"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];
    */
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?cdwn"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Channel-";
}
- (IBAction)voldown:(id)sender {
    
   /*
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?vdwn"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];
    */
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?vdwn"]]];
    [[self view] addSubview:webView];
    
    self.statusLabel.text=@"Volume-";
}
- (IBAction)back:(id)sender {
    /*
    
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.145/?bck"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];*/
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?bck"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Back";
}
- (IBAction)select:(id)sender {
    
    /*
    NSURL *url = [NSURL URLWithString:@"http://10.0.0.25/?slc"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:req];*/
    
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setFrame:CGRectMake(0, 0, 0, 0)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.145/?slc"]]];
    [[self view] addSubview:webView];
    self.statusLabel.text=@"Select";
}



@end
