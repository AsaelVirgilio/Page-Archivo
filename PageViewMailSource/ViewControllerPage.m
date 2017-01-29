//
//  ViewControllerPage.m
//  PageViewMailSource
//
//  Created by Sverovich on 1/28/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import "ViewControllerPage.h"

@interface ViewControllerPage ()
{

    
    __weak IBOutlet UILabel *lblNumero;
    __weak IBOutlet UILabel *lblNombre;
    
}




@end

@implementation ViewControllerPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    lblNumero.text = _numero;
    lblNombre.text = self.nombre;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
