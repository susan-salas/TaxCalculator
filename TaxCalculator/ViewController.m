//
//  ViewController.m
//  TaxCalculator
//
//  Created by Susan Salas on 12/27/15.
//  Copyright (c) 2015 Susan Salas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *onCalculateButtonTapped;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property  double tax;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.tax = 0.075;
    
    

}

- (IBAction)segmentedControl:(id)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0){
       
        self.tax = 0.075;
       
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1){
        
        self.tax = 0.0925;
    }
    else
    {
        
        self.tax = 0.045;
    
    }
}


- (IBAction)onCalculateButtonTapped:(id)sender {

    
    
    NSString *amount = _priceTextField.text;
    double value = [amount doubleValue];
    
    double result = value * self.tax;
    [self.resultLabel setText:[NSString stringWithFormat:@"$%.2f", result]];


}

    
  

@end

