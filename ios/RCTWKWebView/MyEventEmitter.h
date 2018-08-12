//
//  MyEventEmitter.h
//  RCTWKWebView
//
//  Created by Jacob Barr on 30/07/2018.
//

#ifndef MyEventEmitter_h
#define MyEventEmitter_h

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface MyEventEmitter : RCTEventEmitter <RCTBridgeModule>

- (void) sendEventWithFileName: (NSString *)fileName;

- (void) sendEventWithFileName: (NSString *)fileName withMimeType: (NSString *)mimeType;

- (void) sendIFrameEventWithURL: (NSString *)url;

@end


#endif /* MyEventEmitter_h */

