//
//  ModelController.m
//  PageViewMailSource
//
//  Created by Sverovich on 1/28/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import "ModelController.h"

@implementation ModelController

-(id)init
{
    if(self = [super init])
    {
        
    }
    return self;
}

-(int)indexFromViewController:(ViewControllerPage *)viewController
{
    return viewController.pageNumber++;
    
}

-(ViewControllerPage *)viewControllerpageFromIndex:(int)index
{

    ViewControllerPage *viewController = [[ViewControllerPage alloc] init];
    viewController.pageNumber = index;
    viewController.numero = [NSString stringWithFormat:@"%d",index];
    viewController.nombre = [_arrDatos objectAtIndex:index];
    
    
    return viewController;
    
}
#pragma mark DataSourcePage

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    
    int index = [self indexFromViewController:(ViewControllerPage *)viewController];
    
    if(index == NSNotFound || index == 0)
    {
        return nil;
    }
    
    index --;
    
    return [self viewControllerpageFromIndex:index];

}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    int index = [self indexFromViewController:(ViewControllerPage *)viewController];

    if(index == NSNotFound)
    {
        return nil;
    }
    
    index++;
    
    if(index == _arrDatos.count)
    {
        return nil;
    }
    
    return [self viewControllerpageFromIndex:index];
    
}

@end
