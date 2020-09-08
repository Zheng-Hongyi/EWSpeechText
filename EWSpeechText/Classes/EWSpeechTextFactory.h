//
//  EWSpeechTextFactory.h
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/8.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EWSpeechTextFactory : NSObject

+ (void)speechChineseText:(NSString *)text rate:(float)rate delegate:(id <AVSpeechSynthesizerDelegate>) delegate;

@end

NS_ASSUME_NONNULL_END
