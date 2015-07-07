#import<SpringBoard/SBApplicationController.h>
#import<SpringBoard/SpringBoard.h>
#import<SpringBoard/VolumeControl.h>

#import<SpringBoard/SBAlert.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
	%orig;

  // Checking if headphones are present or not

BOOL isPresent = YES;

if(isPresent){
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hi Akash" 
		message:@"Headphone present" 
		delegate:nil 
		cancelButtonTitle:@"I Know" 
		otherButtonTitles:nil];
	[alert show];
	[alert release];
}
else{
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hi Akash" 
		message:@"Headphone is not present" 
		delegate:nil 
		cancelButtonTitle:@"I Know" 
		otherButtonTitles:nil];
	[alert show];
	[alert release];

  }
}

-(void)powerDownRequested:(id)requested{
    NSLog(@"Power down is requested ------------ from the tweaks by akkyyaa");
    NSLog(@"And Class is %@",NSStringFromClass([requested class]));
    %orig;
  }

%end
