//
//  EWSpeechTextFactory.m
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/8.
//

#import "EWSpeechTextFactory.h"
#import "EWSpeechTextCore.h"

@interface EWSpeechTextFactory ()

@property (nonatomic, strong) EWSpeechTextCore *core;

@end

@implementation EWSpeechTextFactory

+ (instancetype)shared {
    static EWSpeechTextFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (nil == instance) {
            instance = [EWSpeechTextFactory new];
        }
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.core = [EWSpeechTextCore new];
    }
    return self;
}

- (void)speechChineseText:(NSString *)text rate:(float)rate delegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    self.core.speechText = text;
    self.core.language = @"zh-CN";
    self.core.rate = rate;
    self.core.delegate = delegate;
    [self.core start];
}

- (void)speechEnglishText:(NSString *)text rate:(float)rate delegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    self.core.speechText = text;
    self.core.language = @"en-US";
    self.core.rate = rate;
    self.core.delegate = delegate;
    [self.core start];
}

- (void)pause {
    [self.core pause];
}

- (void)end {
    [self.core end];
}

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
