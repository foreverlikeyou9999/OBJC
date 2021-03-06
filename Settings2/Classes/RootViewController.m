#import "RootViewController.h"
#import "UserSettingListViewController.h"

@implementation RootViewController

#pragma mark -
#pragma mark Initialize

- (id)init {
	LOG_METHOD;
	
	if ( (self = [super init]) ) {		
	}
	return self;
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	LOG_METHOD;
	[super loadView];
	
	UILabel * label = [[UILabel alloc] initWithFrame:self.view.bounds];
	label.text = @"Hello, world!";
	label.textAlignment = UITextAlignmentCenter;
	label.backgroundColor = [UIColor whiteColor];
	label.textColor = [UIColor blackColor];
	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:label];
	
	UIButton * settingButton;
	settingButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	[settingButton setTitle:@"Setting" forState:UIControlStateNormal];
	[settingButton sizeToFit];
	CGPoint newPoint = self.view.center;
	newPoint.y += 80;
	settingButton.center = newPoint;
	[settingButton addTarget:self 
					  action:@selector(settingListButtonDidPush) 
			forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:settingButton];	
}

- (void)viewDidLoad {
	LOG_METHOD;
	
	[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
	LOG_METHOD;
	
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	LOG_METHOD;
	
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	LOG_METHOD;
	
    [super dealloc];
}

#pragma mark -
#pragma mark buttonAction

- (void)settingButtonDidPush {
	LOG_METHOD;
	
	UserSettingViewController * userSettingViewController;
	userSettingViewController = [[[UserSettingViewController alloc] init] autorelease];
	userSettingViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    userSettingViewController.delegate = self;
	
    UINavigationController * navController;
    navController = [[UINavigationController alloc] initWithRootViewController:userSettingViewController];
	navController.modalPresentationStyle = UIModalPresentationFormSheet;
	
	[self presentModalViewController:navController animated:YES];
	[navController release];
}

- (void)settingListButtonDidPush {
	LOG_METHOD;
	
	UserSettingListViewController * controller;
	controller = [[[UserSettingListViewController alloc] init] autorelease];
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    controller.delegate = self;
	
    UINavigationController * navController;
    navController = [[UINavigationController alloc] initWithRootViewController:controller];
	navController.modalPresentationStyle = UIModalPresentationFormSheet;
	
	[self presentModalViewController:navController animated:YES];
	[navController release];
}

#pragma mark -
#pragma mark Delegate

- (void)closeButtonDibPush:(id)controller
{
	LOG_METHOD;
    [controller dismissModalViewControllerAnimated:YES];
}

@end
