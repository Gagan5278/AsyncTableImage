//
//  ViewController.h
//  AsyncTableImage
//
//  Created by Gagan on 14/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *arrayOfMutableData;
}
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
