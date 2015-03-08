//
//  ViewController.m
//  ComUIViewCls
//
//  Created by Azim Shaik on 3/3/15.
//  Copyright (c) 2015 Azim. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property(nonatomic,strong) UIDynamicAnimator *animator;

@end
@implementation ViewController
@synthesize square;
@synthesize square2;
@synthesize myText;
@synthesize myImg;
@synthesize myImgView;
@synthesize myTable;
@synthesize myLabel;
@synthesize myBotton;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *mainframe = [[UIView alloc] initWithFrame:applicationFrame];
    mainframe.backgroundColor = [UIColor whiteColor];
    self.view = mainframe;
    
    self.myText = [[UITextView alloc] initWithFrame:CGRectMake(150.0, 100.0, 150.0, 30.0)];
    myText.backgroundColor = [UIColor orangeColor];
    
    // //self.myTable = [UITableView alloc] ini
    self.myImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image1.png"]];
    myImgView.frame = CGRectMake(200.0, 250.0, 150.0, 300.0);
    //myImgView.center = myImgView.superview.center;
    
    
    self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake(200.0, 200.0, 200.0, 30.0)];
    myLabel.backgroundColor =[UIColor brownColor];
    myLabel.text = @"Hello";
    myLabel.textColor = [UIColor whiteColor];
    
    self.myBotton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.myBotton setFrame:CGRectMake(80.0, 150.0, 200.0, 40.0)];
    [self.myBotton setTitle:@"Round Rect Button" forState:UIControlStateNormal];
    myBotton.backgroundColor = [UIColor greenColor];
    
    UIButton *infolightBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infolightBtn setFrame:CGRectMake(20.0, 250.0, 250.0, 90.0)];
    [infolightBtn setTitle:@"Info" forState:UIControlStateHighlighted];
    [infolightBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    UIButton *contactButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [contactButton setFrame:CGRectMake(60, 200, 200, 40)];
    [self.view addSubview:contactButton];
    
    
    self.square = [[UIView alloc] initWithFrame:CGRectMake(10.0, 10.0, 50.0, 50.0)];
    square.backgroundColor = [UIColor yellowColor];
    
    
    
    self.square2 = [[UIView alloc] initWithFrame:CGRectMake(60.0, 60.0, 80.0, 80.0)];
    square2.backgroundColor =[UIColor blueColor];
    
    [self.view addSubview:myImgView];
    [self.view addSubview:myText];
    [self.view addSubview:myLabel];
    [self.view addSubview:myBotton];
    [self.view addSubview:infolightBtn];
    [self.view addSubview:square];
    [self.view addSubview:square2];
    
    for (float i=50.0; i<100.0; i++) {
            }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    
    if (square) {
        NSLog(@"yellow");
        square.backgroundColor = [UIColor blueColor];
        square2.backgroundColor =[UIColor yellowColor];
        
        //self.view =[UIColor redColor];
    }else if (square2){
        NSLog(@"Wait");
    }
    
}
@end