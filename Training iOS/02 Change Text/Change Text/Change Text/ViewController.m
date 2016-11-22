//
//  ViewController.m
//  Change Text
//
//  Created by Anda  on 11/21/16.
//  Copyright © 2016 systprog. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btninfo:(id)sender {
    self.lblinfo.text = @"Sudah Ganti!";
}
@end
