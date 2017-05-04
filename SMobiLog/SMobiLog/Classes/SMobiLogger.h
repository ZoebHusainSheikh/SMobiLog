//
//  SMobiLogger.h
//  SMobiLogger
//
//  Created by Systango on 4/12/13.
//  Copyright (c) 2013 Systango. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

#ifdef DEBUG
#define NSLog(args...) ExtendNSLogInfo(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);
#define NSLogError(args...) ExtendNSLogError(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);
#define NSLogWarning(args...) ExtendNSLogWarning(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);

#else
#define NSLog(x...)
#endif

void ExtendNSLogInfo(const char *file, int lineNumber, const char *functionName, NSString *message, ...);
void ExtendNSLogError(const char *file, int lineNumber, const char *functionName, NSString *message, ...);
void ExtendNSLogWarning(const char *file, int lineNumber, const char *functionName, NSString *message, ...);



@interface SMobiLogger : NSObject {
    dispatch_queue_t queue_;
}
// To create a sigelton object
+ (SMobiLogger *)sharedInterface;

// To delete old logs from db
- (void)refreshLogs:(NSNumber *)fromDaysOrNil;

// To Fetch all the logs from db
- (NSString *)fetchLogs;

// To send logs via email
- (void)sendEmailLogs:(id)controller;

// To get device name
- (NSString *) deviceName;

// Save logs with particulare type
- (void)debug:(NSString *)title withDescription:(NSString *)description;
- (void)error:(NSString *)title withDescription:(NSString *)description;
- (void)info:(NSString *)title withDescription:(NSString *)description;
- (void)other:(NSString *)title withDescription:(NSString *)description;
- (void)warn:(NSString *)title withDescription:(NSString *)description;
- (void)unCaughtExceptionWithDescription:(NSString*)description;

// To start timer, which delete old logs
- (void)startMobiLogger;



@end
