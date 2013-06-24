//
//  ViewController.h
//  KVO
//
//  Created by kada on 13-6-21.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *textlable;
    NSString *price;
}
@property(retain,nonatomic) IBOutlet UILabel *textlable;
@property(retain,nonatomic) NSString *price;
-(IBAction)bt:(id)sender;
@end
