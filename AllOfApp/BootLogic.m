//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* array = @{SECTION: @"Array", MENU: @[
                                    @{TITLE: @"Creat", CLASS: @"CreatArray"},
                                    @{TITLE: @"Query", CLASS: @"QueryArray"},
                                    @{TITLE: @"SendMessage", CLASS:@"SendMessage"}
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Training", MENU: @[
                                    @{TITLE:@"QueryArrayFootball",CLASS:@"QueryArrayFootball"},
                                    @{TITLE:@"QueryArrayCategory",CLASS:@"ArrayCategory"},
                                    @{TITLE: @"Number Output", CLASS: @"numberOutput"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[array, intermediate, advanced];
    mainScreen.title = @"All App";
    mainScreen.about = @"All of app in learn";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
