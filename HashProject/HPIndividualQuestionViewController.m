//
//  HPIndividualQuestionViewController.m
//  HashProject
//
//  Created by Andrew Paul Simmons on 7/26/14.
//  Copyright (c) 2014 HashProject Inc. All rights reserved.
//

#import "HPIndividualQuestionViewController.h"

@interface HPIndividualQuestionViewController ()

@end

@implementation HPIndividualQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:179.0f/256.0f green:90.0f/256.0f blue:63.0f/256.0f alpha:1];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showPreviousQuestion
{
   
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
