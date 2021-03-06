#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    LOG_METHOD;

	
	RootViewController * rootController = [[RootViewController alloc] init];
	_nav = [[UINavigationController alloc] initWithRootViewController:rootController];	
	
	CGRect frameForWindow = [[UIScreen mainScreen] bounds];
	_window = [[UIWindow alloc] initWithFrame:frameForWindow];
	[_window makeKeyAndVisible];
	[_window addSubview:_nav.view];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	LOG_METHOD;

    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
	LOG_METHOD;

    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	LOG_METHOD;

    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	LOG_METHOD;

    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
	LOG_METHOD;

    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
	LOG_METHOD;

    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	LOG_METHOD;

    [_window release];
	[_nav release];
    [super dealloc];
}


@end
