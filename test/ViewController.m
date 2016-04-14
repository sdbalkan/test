//
//  ViewController.m
//  test
//
//  Created by Sedat Balkan on 13.04.2016.
//  Copyright (c) 2016 dimes. All rights reserved.
//

#import "ViewController.h"
#import "Foundation/Foundation.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtName = _txtName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    NSString *sAd = _txtName.text;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Mesaj" message:sAd delegate:self cancelButtonTitle:@"Tamam" otherButtonTitles:nil, nil];
    [alertView show];
 }
@end
