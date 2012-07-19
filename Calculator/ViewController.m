//
//  ViewController.m
//  Calculator
//
//  Created by iD Student on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)getNumber:(id)sender {
    if(op == true) {
        secondNumber = secondNumber*10 + (float)[sender tag];
        display.text = [NSString stringWithFormat:@"%f",secondNumber];
    } else {
        firstNumber = firstNumber*10 + (float)[sender tag];
        display.text = [NSString stringWithFormat:@"%f", firstNumber];
        
    }
}

- (IBAction)getOperator:(id)sender {
    operation = [sender tag];
    display.text = [NSString stringWithFormat:@""];
    op = true;
}

- (IBAction)doMath:(id)sender {
    switch (operation) {
        case 0:
            answer = (firstNumber / secondNumber);
            display.text = [NSString stringWithFormat:@"%f", answer];
            break;
        case 1:
            answer = (firstNumber * secondNumber);
            display.text = [NSString stringWithFormat:@"%f", answer];
            break;
        case 2:
            answer = (firstNumber - secondNumber);
            display.text = [NSString stringWithFormat:@"%f", answer];
            break;
        case 3:
            answer = (firstNumber + secondNumber);
            display.text = [NSString stringWithFormat:@"%f", answer];
    }
    firstNumber = answer;
    secondNumber = 0;
    op = false;
}

- (IBAction)clear:(id)sender {
    display.text = [NSString stringWithFormat:@""];
    firstNumber = 0;
    secondNumber = 0;
    op = false;
    answer = 0;
}
@end
