//
//  ViewController.h
//  FunkyFlashLight
//
//  Created by Lion User on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController< UIPickerViewDelegate,UIPickerViewDataSource>

- (IBAction)dissmissPicker:(id)sender;

@property (nonatomic,strong) NSArray *ColorName;

@property (nonatomic,strong) IBOutlet UIPickerView *myPickerView;

- (IBAction)showPicker:(id)sender;

@end
