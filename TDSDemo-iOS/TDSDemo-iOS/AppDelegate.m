//
//  AppDelegate.m
//  TDSDemo-iOS
//
//  Created by Vivian on 2021/5/20.
//

#import "AppDelegate.h"
#import <TapLoginSDK/TapLoginSDK.h>
#import <TapBootstrapSDK/TapBootstrap.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    TapConfig *config = TapConfig.new;
//    config.clientSecret = @"clientSecret";
    config.clientId = @"BL1SbiKHHGGmivSEe8";
    config.region = TapSDKRegionTypeCN; // TapSDKRegionTypeCN: 中国大陆  TapSDKRegionTypeIO: 国际
    [TapBootstrap initWithConfig:config];
    return YES;
}



#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
