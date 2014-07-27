//
//  HPQuestionsViewController.m
//  HashProject
//
//  Created by Andrew Paul Simmons on 7/26/14.
//  Copyright (c) 2014 HashProject Inc. All rights reserved.
//

#import "HPQuestionsViewController.h"
#import "HPIndividualQuestionViewController.h"


@interface HPQuestionsViewController ()

@end

@implementation HPQuestionsViewController

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
/*
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width*6, self.view.frame.size.height);
    [self.view addSubview:scrollView];
    */
  
    UISwipeGestureRecognizer* swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeLeft)];
    [swipeRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:swipeRecognizer];
    // Do any additional setup after loading the view.
    
   // UITextView* [   `q
}

- (void) onSwipeLeft {
    [self showFirstQuestion];
}
- (void) showFirstQuestion
{
    HPIndividualQuestionViewController* individualQuestionViewController = [[HPIndividualQuestionViewController alloc] init];
    [self.navigationController pushViewController:individualQuestionViewController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
