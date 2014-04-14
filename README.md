AsyncTableImage
===============

Demo for downloading image view with crcular progress view. Image will display in circularView.

TO use this demo add "HelperClass" folder within your application.
Now add following frameworks
1. MobileCoreServices
2. SystemConfiguration
3. CFNetwork
4. QuartzCore

Now in your ViewController class import 
#import "PAImageView.h"
Within your "cellForRowAtIndexPath" delegate in viewController

        PAImageView *avatarView = [[PAImageView alloc] initWithFrame:CGRectMake(5, 5, 50, 50) backgroundProgressColor:[UIColor whiteColor] progressColor:[UIColor colorWithRed:240/255.f green:85/255.f blue:97/255.f alpha:1.f]];
        [cell.contentView addSubview:avatarView];
        [avatarView setImageURL:[arrayOfMutableData objectAtIndex:indexPath.row]];





Above demo uses "AFNetwork" & "PAImageView" from gitHub.
