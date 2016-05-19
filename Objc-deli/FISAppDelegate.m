//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    if ([deliLine count] == 0){
        NSString *empty = @"The line is currently empty.";
        
        return empty;
    }
    
    else {
        
        NSString *line = @"The line is:";
        
        for(NSUInteger i = 0; i <[deliLine count]; i++){
            //NSUInteger place = i + 1;
            line = [line stringByAppendingFormat:@"\n%lu. %@", i + 1 /*place*/, deliLine [i]];
            
        }
        return line;
    }
    }
    
    -(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
        [deliLine addObject:name];
    }
    
    
    -(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
        NSString *nextCustomer = [deliLine firstObject];
        [deliLine removeObjectAtIndex: 0];
        
        return nextCustomer;
    }
    
    
    
    @end
