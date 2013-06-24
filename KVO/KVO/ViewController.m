//
//  ViewController.m
//  KVO
//
//  Created by kada on 13-6-21.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import "ViewController.h"
#import "Prices.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textlable,price;


-(void)dealloc
{
    [super dealloc];
    [textlable release];
    //Prices *viewcon =[[Prices alloc] init];
    [self removeObserver:self forKeyPath:@"price"];
    [price release];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    //Prices *viewcon =[[Prices alloc]init];
    [self setValue:@"11" forKey:@"price"];
    [self  addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    self.textlable.text=[self valueForKey:@"price"];
    //[viewcon release];
}
-(IBAction)bt:(id)sender
{
   // Prices *viewcon =[[Prices alloc]init];
    [self setValue:@"21" forKey:@"price"];
    //[viewcon release];
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"sssss");
    //Prices *viewcon =[[Prices alloc]init];
    if ([keyPath isEqualToString:@"price"]) {
        self.textlable.text=[self valueForKey:@"price"];
    }
    //[viewcon release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
