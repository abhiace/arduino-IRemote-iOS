//
//  AmpView.h
//  arduiremote
//
//  Created by Abhishek Joshi on 21/10/14.
//  Copyright (c) 2014 Abhishek Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AmpView : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *aon;
@property (weak, nonatomic) IBOutlet UIButton *aoff;
@property (weak, nonatomic) IBOutlet UIButton *aaux;
@property (weak, nonatomic) IBOutlet UIButton *avup;
@property (weak, nonatomic) IBOutlet UIButton *acd;
@property (weak, nonatomic) IBOutlet UIButton *avdwn;
@property (weak, nonatomic) IBOutlet UILabel *ampStatus;

@end
