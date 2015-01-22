//
//  JTFirstViewController.m
//  Prectice
//
//  Created by 唐俊杰 on 15-1-22.
//  Copyright (c) 2015年 junjietang. All rights reserved.
//

#import "JTFirstViewController.h"

@interface JTFirstViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segments;
@property (weak, nonatomic) IBOutlet UIView *changeViews;

@end

@implementation JTFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)segmentAction:(id)sender {
    if (self.segments.selectedSegmentIndex == 0) {
        self.changeViews.backgroundColor = [UIColor greenColor];
    }
    if (self.segments.selectedSegmentIndex == 1) {
        self.changeViews.backgroundColor = [UIColor blueColor];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.segments.selectedSegmentIndex = 1;
    [self segmentAction:self.segments];
    
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
