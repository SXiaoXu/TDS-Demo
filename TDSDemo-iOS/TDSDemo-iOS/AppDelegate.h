//
//  AppDelegate.h
//  TDSDemo-iOS
//
//  Created by Vivian on 2021/5/20.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong, nonatomic) UIWindow *window;
- (void)saveContext;


@end
