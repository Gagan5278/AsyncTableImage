//
//  ViewController.m
//  AsyncTableImage
//
//  Created by Gagan on 14/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import "ViewController.h"
#import "PAImageView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    arrayOfMutableData=[NSMutableArray arrayWithObjects:@"http://www.hollance.com/wp-content/uploads/2011/11/Screenshot.png",@"http://www.pixeden.com/media/k2/galleries/377/001-line-full-icons-tab-bar-ios-7-vector-psd-png-vol3.jpg",@"http://d13yacurqjgara.cloudfront.net/users/62832/screenshots/810805/header_footer_shot.jpg",@"http://www.pixeden.com/media/k2/galleries/346/004-line-full-icons-tab-bar-ios-7-vector-psd-png.jpg",@"http://www.cssauthor.com/wp-content/uploads/2013/07/Tab-Bar-Icons-iOS-7.jpg",@"http://ptgmedia.pearsoncmg.com/imprint_downloads/informit/images/books/sadun/101211_9780321754264_05fig06.jpg",@"http://www.techotopia.com/images/3/3b/Iphone_ios_5_tab_bar_storyboard_example_running.jpg",@"http://mmminimal.com/wp-content/uploads/2011/05/0012.jpg",@"http://www.pixeden.com/media/k2/galleries/329/001-line-full-icons-tab-bar-ios-7-vector-psd-png.jpg",@"http://d13yacurqjgara.cloudfront.net/users/7022/screenshots/1121725/ios7-icons-dribbble_1x.png",@"http://i.stack.imgur.com/8Cvg5.png",@"http://www.pixeden.com/media/k2/galleries/377/001-line-full-icons-tab-bar-ios-7-vector-psd-png-vol3.jpg",@"http://az414406.vo.msecnd.net/images/MacCompatible.png",@"https://dt8kf6553cww8.cloudfront.net/static/images/icons128/page_white_code-vflEPhKac.png",@"http://maniacdev.com/wp-content/uploads/2014/04/2048.jpg", nil];
}


#pragma mark-TabelView delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  arrayOfMutableData.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier=@"CellIdentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] ;
        cell.selectionStyle=UITableViewCellSelectionStyleBlue;

        PAImageView *avatarView = [[PAImageView alloc] initWithFrame:CGRectMake(5, 5, 50, 50) backgroundProgressColor:[UIColor whiteColor] progressColor:[UIColor colorWithRed:240/255.f green:85/255.f blue:97/255.f alpha:1.f]];
        [cell.contentView addSubview:avatarView];
          // Later
        [avatarView setImageURL:[arrayOfMutableData objectAtIndex:indexPath.row]];
    }

    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(65, 10, 200, 40)];
        
    label.text=[NSString stringWithFormat:@"IndexPath : %d",indexPath.row];
    [cell.contentView addSubview:label];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
