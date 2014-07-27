//
//  HPIntroViewController.m
//  HashProject
//
//  Created by Andrew Paul Simmons on 7/26/14.
//  Copyright (c) 2014 HashProject Inc. All rights reserved.
//

#import "HPIntroViewController.h"
#import "HPQuestionNavigationController.h"
#import "HPQuestionsViewController.h"

@interface HPIntroViewController ()
{
    int numIntroViews;
    UIView* signingInView;
}

@end


@implementation HPIntroViewController



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
    
    NSMutableArray* introViewsArray = [[NSMutableArray alloc] initWithCapacity:4];
    
    { // Intro view one
        
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*numIntroViews, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [introViewsArray addObject:view];
        numIntroViews++;
        
        view.backgroundColor = [UIColor brownColor];
    
    }

    { // Intro view two
        
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*numIntroViews, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [introViewsArray addObject:view];
        numIntroViews++;
        
        view.backgroundColor = [UIColor orangeColor];
    }
    
    { // Intro view three
        
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*numIntroViews, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [introViewsArray addObject:view];
        numIntroViews++;
        
        view.backgroundColor = [UIColor purpleColor];
 
    }
    
    { // Intro view four
        
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*numIntroViews, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [introViewsArray addObject:view];
        numIntroViews++;
        
        int fieldWidth = 200;
        UITextField* username_tf = [[UITextField alloc] initWithFrame:CGRectMake( (self.view.bounds.size.width - fieldWidth)/2 , 100, fieldWidth , 30)];

        [view addSubview:username_tf];
        username_tf.placeholder = @"Username";
   
        
        UITextField* password_tf = [[UITextField alloc] initWithFrame:CGRectMake( (self.view.bounds.size.width - fieldWidth)/2 , 150, fieldWidth , 30)];
        [view addSubview:password_tf];
        password_tf.placeholder = @"Password";
        password_tf.secureTextEntry = YES;
        
        UIImage* login_img = [UIImage imageNamed:@"login.jpg"];
        UIButton* login_btn = [[UIButton alloc] initWithFrame:CGRectMake((view.frame.size.width - login_img.size.width)/2, self.view.bounds.size.height - 300, login_img.size.width, login_img.size.height)];
        [login_btn setImage:login_img forState:UIControlStateNormal];
        [login_btn addTarget:self action:@selector(onLogin:) forControlEvents:UIControlEventTouchUpInside];
        
        view.backgroundColor = [UIColor whiteColor];
        [view addSubview:login_btn];
    }
    
    // Do any additional setup after loading the view.
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.pagingEnabled = YES;
    scrollView.backgroundColor = [UIColor blueColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width*4, self.view.bounds.size.height );
    [self.view addSubview:scrollView];
    
    for(int i = 0; i < numIntroViews; i++)
    {
        [scrollView addSubview:introViewsArray[i]];
    }
    
}


- (void) onLogin:(id)sender
{
    [self.view endEditing:YES];
    signingInView = [[UIView alloc] initWithFrame:self.view.bounds];
    signingInView.backgroundColor = [UIColor blackColor];
    signingInView.alpha = 0.7;
    int labelWidth = 100;
    int labelX = (self.view.bounds.size.width - labelWidth)/2 + 10;
    int labelY = 150;
    UILabel* signingInLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelX, labelY, labelWidth, 20)];
    signingInLabel.text = @"Signing in...";
    signingInLabel.textColor = [UIColor whiteColor];
    [signingInView addSubview:signingInLabel];
    UIActivityIndicatorView* ai = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    ai.frame = CGRectMake(labelX - 30, labelY, ai.frame.size.width, ai.frame.size.height);
    [ai startAnimating];
    [signingInView addSubview:ai];
    
    [self.view addSubview:signingInView];
    [self performSelector:@selector(onSignInSuccess) withObject:nil afterDelay:3.0f];

}

- (void) onSignInSuccess
{
    signingInView = nil;
    
    HPQuestionsViewController* questionsVC = [[HPQuestionsViewController alloc] init];
    questionsVC.automaticallyAdjustsScrollViewInsets = NO;
    questionsVC.title = @"Hatch";
    HPQuestionNavigationController* questionsNavController = [[HPQuestionNavigationController alloc] initWithRootViewController:questionsVC];

    [self presentViewController:questionsNavController animated:YES completion:nil];
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
