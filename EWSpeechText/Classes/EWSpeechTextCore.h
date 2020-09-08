//
//  EWSpeechTextCore.h
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/7.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EWSpeechTextCore : NSObject

@property (nonatomic, copy) NSString *speechText;
@property (nonatomic, copy) NSString *language;
@property (nonatomic) float rate;

- (instancetype)initWithSpeechDelegate:(id<AVSpeechSynthesizerDelegate>)delegate;

- (void)startSpeech;

@end

NS_ASSUME_NONNULL_END
