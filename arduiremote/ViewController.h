//
//  ViewController.h
//  arduiremote
//
//  Created by Abhishek Joshi on 18/10/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIButton *power;
@property (weak, nonatomic) IBOutlet UIButton *mute;
@property (weak, nonatomic) IBOutlet UIButton *chup;
@property (weak, nonatomic) IBOutlet UIButton *vup;
@property (weak, nonatomic) IBOutlet UIButton *chdown;
@property (weak, nonatomic) IBOutlet UIButton *vdown;
@property (weak, nonatomic) IBOutlet UIButton *back;
@property (weak, nonatomic) IBOutlet UIButton *select;


@end
