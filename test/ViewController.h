//
//  ViewController.h
//  test
//
//  Created by Sedat Balkan on 13.04.2016.
//  Copyright (c) 2016 dimes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *responseData;
}

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UIButton *btnSave;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
- (IBAction)buttonClick:(id)sender;

@end

