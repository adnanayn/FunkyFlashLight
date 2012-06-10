//
//  ViewController.m
//  FunkyFlashLight
//
//  Created by Lion User on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "ViewController.h"

@implementation ViewController
@synthesize ColorName,myPickerView;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [ColorName count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [ColorName objectAtIndex:row];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ColorName = [[NSArray alloc]initWithObjects:@"Black",@"Blue",@"Brown",@"Cyan",@"DarkGray",@"Light Gray",@"Green",@"Purple",@"Red",@"Orange",@"White",@"Yellow",nil];
    
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    UIColor *newColor;
    
    switch (row) {
        case 0:
            newColor = [UIColor blackColor];
            break;
        case 1:
            newColor = [UIColor blueColor];
            break;       
        case 2:
            newColor = [UIColor brownColor];
            break;        
        case 3:
            newColor = [UIColor cyanColor];
            break;  
        case 4:
            newColor = [UIColor darkGrayColor];
            break;
        case 5:
            newColor = [UIColor lightGrayColor];
            break;
        case 6:
            newColor = [UIColor greenColor];
            break;    
        case 7:
            newColor = [UIColor purpleColor];
            break;
        case 8:
            newColor = [UIColor redColor];
            break; 
        case 9:
            newColor = [UIColor orangeColor];
            break;        
        case 10:
            newColor = [UIColor whiteColor];
            break;
        case 11:
            newColor =[UIColor yellowColor];
            break;
        default:
            newColor = [UIColor clearColor];
            break;
    }
    self.view.backgroundColor = newColor;
    
}
- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)showPicker:(id)sender{
    myPickerView.hidden = NO; // Show myPickerView 
}

- (IBAction)dissmissPicker:(id)sender{
    myPickerView.hidden = YES; //Hide myPIckerView
}
@end
