//
//  AppDelegate.h
//  ExpandingViews
//
//  Created by Chopra, Varun on 7/5/18.
//  Copyright © 2018 None. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

