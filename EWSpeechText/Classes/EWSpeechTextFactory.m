//
//  EWSpeechTextFactory.m
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/8.
//

#import "EWSpeechTextFactory.h"
#import "EWSpeechTextCore.h"

@implementation EWSpeechTextFactory

+ (void)speechChineseText:(NSString *)text rate:(float)rate delegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    
    EWSpeechTextCore *speechCore = [[EWSpeechTextCore alloc] initWithSpeechDelegate:delegate];
    speechCore.speechText = text;
    speechCore.rate = rate;
    speechCore.language = @"zh-CN";
    [speechCore startSpeech];
}

+ (void)speechEnglishText:(NSString *)text rate:(float)rate delegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    EWSpeechTextCore *speechCore = [[EWSpeechTextCore alloc] initWithSpeechDelegate:delegate];
    speechCore.speechText = text;
    speechCore.rate = rate;
    speechCore.language = @"en-US";
    [speechCore startSpeech];
}

@end
