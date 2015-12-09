//
//  ViewController.m
//  TablaCustom
//
//  Created by Henry AT on 12/7/15.
//  Copyright © 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

#import "viewWidget.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  viewWidget *widget = [[viewWidget alloc] init];
  widget.translatesAutoresizingMaskIntoConstraints = NO;

  [self.view addSubview:widget];
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  // Funciona mediante VFL
    NSDictionary * vistas = @{@"vista":widget};
    NSArray *posVertical = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[vista]-50-|"
                                                                   options:0
                                                                   metrics:nil
                                                                     views:vistas];
    NSArray *posHorizontal = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[vista]-10-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:vistas];
  
    [self.view addConstraints:posVertical];
    [self.view addConstraints:posHorizontal];

  
  
  
  
  // Funciona mediante constraint with Item:
//  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget
//                                                        attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual
//                                                           toItem:self.view
//                                                        attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
//  
//  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget
//                                                        attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual
//                                                           toItem:self.view
//                                                        attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-30]];
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


  

  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
