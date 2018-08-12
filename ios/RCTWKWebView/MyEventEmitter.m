//
//  MyEventEmitter.m
//  RCTWKWebView
//
//  Created by Jacob Barr on 30/07/2018.
//

#import <Foundation/Foundation.h>
#import "MyEventEmitter.h"

@implementation MyEventEmitter

RCT_EXPORT_MODULE();

+ (id)allocWithZone:(NSZone *)zone {
    static MyEventEmitter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

- (void) sendEventWithFileName: (NSString *)fileName
{
    [self sendEventWithName:@"iosFileEvent" body:@{@"fileName": fileName}];
}

- (void) sendEventWithFileName: (NSString *)fileName withMimeType: (NSString *)mimeType
{
    [self sendEventWithName:@"iosFileEvent" body:@{@"fileName": fileName, @"mimeType": mimeType}];
}

- (void) sendIFrameEventWithURL: (NSString *)url
{
    [self sendEventWithName:@"iosIFrameEvent" body:@{@"url": url}];
}

- (NSArray<NSString *> *)supportedEvents
{
    return @[@"iosFileEvent", @"iosIFrameEvent"];
}


@end

