//
//  ViewController.m
//  TipCalculator
//
//  Created by swcl on 2017-07-07.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *customTipTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)defaultTip{
    [self calcTipWith:15];
}
- (IBAction)CalcDefaultPress:(id)sender {
    [self calcTipWith:15];

}

-(void)calcTipWith:(float)tipAmount{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    
    float billAmount = [numberFormatter numberFromString:self.billAmountTextField.text].floatValue;
    float result = billAmount * tipAmount / 100;
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%.02f", result];
}

- (IBAction)calcCustomTip:(id)sender {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
     float tipAmount = [numberFormatter numberFromString:self.customTipTextField.text].floatValue;
    
    [self calcTipWith:tipAmount];
    
}


@end
