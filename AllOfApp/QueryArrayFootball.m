//
//  QueryArrayFootball.m
//  AllOfApp
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "QueryArrayFootball.h"
#import "Football.h"

@interface QueryArrayFootball ()

@end

@implementation QueryArrayFootball

- (void)viewDidLoad {
    [super viewDidLoad];
    Football* Player1 = [[Football alloc] initName:@"Marc-Andre ter Stegen" andNumber:@1 andPosition:@"GK"];
    Football* Player2 = [[Football alloc] initName:@"Alex Song" andNumber:@2 andPosition:@"DF"];
    Football* Player3 = [[Football alloc] initName:@"Gerard Pique" andNumber:@3 andPosition:@"DF"];
    Football* Player4 = [[Football alloc] initName:@"Ivan Rakitic" andNumber:@4 andPosition:@"MF"];
    Football* Player5 = [[Football alloc] initName:@"Sergio Busquets" andNumber:@5 andPosition:@"MF"];
    Football* Player6 = [[Football alloc] initName:@"Arda Turan" andNumber:@6 andPosition:@"MF"];
    Football* Player7 = [[Football alloc] initName:@"Pedro Rodriquez" andNumber:@7 andPosition:@"FW"];
    Football* Player8 = [[Football alloc] initName:@"Andres Iniesta" andNumber:@8 andPosition:@"MF"];
    Football* Player9 = [[Football alloc] initName:@"Luis Suarez" andNumber:@9 andPosition:@"FW"];
    Football* Player10 = [[Football alloc] initName:@"Lionel Messi" andNumber:@10 andPosition:@"FW"];
    Football* Player11 = [[Football alloc] initName:@"Neymar" andNumber:@11 andPosition:@"FW"];
    Football* Player12 = [[Football alloc] initName:@"Rafinha" andNumber:@12 andPosition:@"MF"];
    Football* Player13 = [[Football alloc] initName:@"Claudio Bravo" andNumber:@13 andPosition:@"GK"];
    Football* Player14 = [[Football alloc] initName:@"Javier Mascherano" andNumber:@14 andPosition:@"MF"];
    Football* Player15 = [[Football alloc] initName:@"Marc Barta" andNumber:@15 andPosition:@"DF"];
    Football* Player16 = [[Football alloc] initName:@"Douglas" andNumber:@16 andPosition:@"DF"];
    Football* Player17 = [[Football alloc] initName:@"Arda Turan" andNumber:@17 andPosition:@"MF"];
    Football* Player18 = [[Football alloc] initName:@"Jordi Alba" andNumber:@18 andPosition:@"DF"];
    Football* Player19 = [[Football alloc] initName:@"Aleix Vidal" andNumber:@19 andPosition:@"DF"];
    Football* Player20 = [[Football alloc] initName:@"Sergi Roberto" andNumber:@20 andPosition:@"DF"];
    Football* Player21 = [[Football alloc] initName:@"Adriano" andNumber:@21 andPosition:@"DF"];
    Football* Player22 = [[Football alloc] initName:@"Dani Alves" andNumber:@22 andPosition:@"DF"];
    Football* Player23 = [[Football alloc] initName:@"Thomas Vermaelen" andNumber:@23 andPosition:@"DF"];
    Football* Player24 = [[Football alloc] initName:@"Jeremy Mathieu" andNumber:@24 andPosition:@"DF"];
    Football* Player25 = [[Football alloc] initName:@"Jordi Masip" andNumber:@25 andPosition:@"GK"];
        NSArray* Team = @[Player1, Player2, Player3, Player4, Player5, Player6, Player7, Player8, Player9, Player10, Player11, Player12, Player13, Player14, Player15, Player16, Player17, Player18, Player19, Player20, Player21, Player22, Player23, Player24, Player25];
    
    NSMutableArray* choosedPlayer = [[NSMutableArray alloc] init];
    
    int need = 11;
    
    if ( [Team count] >= need )
    {
        while (need > 0)
        {
            id name = [Team objectAtIndex: arc4random() % [Team count]];
            
            if ( ! [choosedPlayer containsObject: name] )
            {
                [choosedPlayer addObject: name];
                need --;
            }
        }
        
    }
    
    int count = 0;
    
    for (Football* item in choosedPlayer) {
        count++;
        NSString* outputStr = [NSString stringWithFormat:@"%i) %@ - %@ - %@", count, item.FullName, item.Position,item.Number];
        [self writeln:outputStr];
        
    }
    
}


@end
