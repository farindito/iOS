//
//  ViewController.m
//  Alert Messagebox
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


- (IBAction)btnDialog:(id)sender {
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Dialog" message:@"Please Enter user credential :" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        NSLog(@"Username : %@", alert.textFields[0].text);
        NSLog(@"Password : %@", alert.textFields[1].text);
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"CANCEL" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action){
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField){
       textField.placeholder = @"Username";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField){
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    }];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)btnNotif:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Hi" message:@"Ini pesannya?" preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)btnAlert:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Info" message:@"ini pesan lagi?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"CANCEL" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
