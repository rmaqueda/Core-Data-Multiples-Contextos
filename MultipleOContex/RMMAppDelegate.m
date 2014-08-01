//
//  RMMAppDelegate.m
//  MultipleOContex
//
//  Created by Ricardo Maqueda on 03/07/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "RMMAppDelegate.h"
#import "RMMMasterViewController.h"
#import "RMMCoreDataStack.h"

@implementation RMMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.coreDataStack = [RMMCoreDataStack coreDataStackWithModelName:@"MultipleOContex"];
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    RMMMasterViewController *controller = (RMMMasterViewController *)navigationController.topViewController;
    controller.coreDataStack = self.coreDataStack;
    
    [self cacharreoDatos];
    //[self autosave];
    return YES;
}


-(void)cacharreoDatos
{
    [self.coreDataStack populateMusicDataInContext:self.coreDataStack.backgroundMOC completion:^{
        NSLog(@"End load data in backgroud thread!");
    }];
}

//-(void)autosave {
//    [self performSelector:@selector(autosave) withObject:nil afterDelay:10];
//    [self.model.contextMOC save:nil];
//    [self.backgroundMOC saveWithInContext:self.backgroundMOC.backgroundMOC errorBlock:^(NSError *error) {
//        NSLog(@"Autosave");
//    }];
//}

@end
