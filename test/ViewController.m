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
@synthesize lblResult = _lblResult;

- (void)viewDidLoad {
    [super viewDidLoad];
    responseData = [[NSMutableData alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                             "<SOAP-ENV:Envelope \n"
                             "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" \n"
                             "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n"
                             "xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" \n"
                             "SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\" \n"
                             "xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\"> \n"
                             "<SOAP-ENV:Body> \n"
                             "<SayHello xmlns=\"http://tempuri.org/\"><Name>JACKSON</Name>"
                             "</SayHello> \n"
                             "</SOAP-ENV:Body> \n"
                             "</SOAP-ENV:Envelope>"];
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://10.0.1.40/WCFTest/"];
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = [NSString stringWithFormat:@"%d", [soapMessage length]];
    [theRequest addValue: @"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [theRequest addValue: @"http://tempuri.org/IHelloService/SayHello" forHTTPHeaderField:@"Soapaction"];
    [theRequest addValue: msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];     
    [theRequest setHTTPBody: [soapMessage dataUsingEncoding:NSUTF8StringEncoding]];
    NSData *data = [NSURLConnection sendSynchronousRequest:theRequest returningResponse:nil error:nil];
    if (data) {
        NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"Data : %@", responseString);
    }
}
@end
