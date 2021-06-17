//
//  EWSpeechTextCore.m
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/7.
//

#import "EWSpeechTextCore.h"

@interface EWSpeechTextCore ()
@property (nonatomic, strong) AVSpeechSynthesizer *speechSyn;

@end

@implementation EWSpeechTextCore

- (instancetype)initWithSpeechDelegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    self = [super init];
    if (self) {
        self.delegate = delegate;
        self.speechSyn = [AVSpeechSynthesizer new];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.speechSyn = [AVSpeechSynthesizer new];
    }
    return self;
}

- (void)startSpeech {
    self.speechSyn.delegate = self.delegate;
    AVSpeechUtterance *speechUt = [[AVSpeechUtterance alloc] initWithString:self.speechText];
    speechUt.rate = self.rate;
    AVSpeechSynthesisVoice *speechVoice = [AVSpeechSynthesisVoice voiceWithLanguage:self.language];
    speechUt.voice = speechVoice;
    [self.speechSyn speakUtterance:speechUt];
}

- (void)start {
    self.speechSyn.delegate = self.delegate;
    AVSpeechUtterance *speechUt = [[AVSpeechUtterance alloc] initWithString:self.speechText];
    speechUt.rate = self.rate;
    AVSpeechSynthesisVoice *speechVoice = [AVSpeechSynthesisVoice voiceWithLanguage:self.language];
    speechUt.voice = speechVoice;
    [self.speechSyn speakUtterance:speechUt];
}

- (void)pause {
    [self.speechSyn pauseSpeakingAtBoundary:AVSpeechBoundaryImmediate];
}

- (void)end {
    [self.speechSyn stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
}

@end
