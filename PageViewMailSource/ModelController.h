//
//  ModelController.h
//  PageViewMailSource
//
//  Created by Sverovich on 1/28/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewControllerPage.h"

@interface ModelController : NSObject<UIPageViewControllerDataSource>
{
    
}

-(ViewControllerPage *)viewControllerpageFromIndex:(int)index;
@property(nonatomic,strong) NSArray *arrDatos;

@end
