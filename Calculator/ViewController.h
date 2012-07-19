//
//  ViewController.h
//  Calculator
//
//  Created by iD Student on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float firstNumber;
    float secondNumber;
    float answer;
    BOOL op;
    int operation;
}
@property (weak, nonatomic) IBOutlet UITextField *display;
- (IBAction)getNumber:(id)sender;
- (IBAction)getOperator:(id)sender;
- (IBAction)doMath:(id)sender;
- (IBAction)clear:(id)sender;

@end
