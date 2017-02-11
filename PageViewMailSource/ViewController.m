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
    
    
    NSArray *arrDatos = [NSArray arrayWithContentsOfFile:pathArreglo];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
