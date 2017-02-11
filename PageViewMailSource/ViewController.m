//
//  ViewController.m
//  PageViewMailSource
//
//  Created by Sverovich on 1/28/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import "ViewController.h"
#import "ModelController.h"
#import "ViewControllerPage.h"

@interface ViewController ()

{
    UIPageViewController *pageViewController;
    ModelController     *modelController;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *documentsDirectory = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *pathArreglo = [documentsDirectory stringByAppendingString:@"/Inbox/ArregloDatos.asa"];
    
    modelController = [ModelController new];
//    modelController.arrDatos = [NSArray arrayWithContentsOfFile:pathArreglo];
    
    NSArray *arrDatos = [NSArray arrayWithContentsOfFile:pathArreglo];
    pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    pageViewController.delegate = self;
    modelController.arrDatos = arrDatos;
    
    ViewControllerPage *page = [modelController viewControllerpageFromIndex:0];
    
    [pageViewController setViewControllers:@[page] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    pageViewController.dataSource = modelController;
    
    [self addChildViewController:pageViewController];
    [self.view addSubview:pageViewController.view];
    [pageViewController didMoveToParentViewController:self];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
