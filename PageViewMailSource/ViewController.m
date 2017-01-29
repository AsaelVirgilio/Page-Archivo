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
    
    NSArray *arrDatos = @[@"Primero",@"Segundo",@"Tercero",@"Cuarto",@"Quinto",@"Sexto",@"Septimo",@"Octavo"];
    
    modelController = [ModelController new];
    modelController.arrDatos = arrDatos;
    
    pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    pageViewController.delegate = self;
    
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
