//
//  ViewController.h
//  test
//
//  Created by Sedat Balkan on 13.04.2016.
//  Copyright (c) 2016 dimes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UIButton *btnSave;
- (IBAction)buttonClick:(id)sender;

@end

