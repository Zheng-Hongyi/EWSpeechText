//
//  EWSpeechTextCore.m
//  EWSpeechText
//
//  Created by 郑洪毅 on 2020/9/7.
//

#import "EWSpeechTextCore.h"

@interface EWSpeechTextCore ()

@property (nonatomic, weak) id <AVSpeechSynthesizerDelegate>delegate;

@end

@implementation EWSpeechTextCore

- (instancetype)initWithSpeechDelegate:(id<AVSpeechSynthesizerDelegate>)delegate {
    self = [super init];
    if (self) {
        self.delegate = delegate;
    }
    return self;
}

- (void)startSpeech {
    AVSpeechSynthesizer *speechSyn = [AVSpeechSynthesizer new];
    speechSyn.delegate = self.delegate;
    AVSpeechUtterance *speechUt = [[AVSpeechUtterance alloc] initWithString:self.speechText];
    speechUt.rate = self.rate;
    AVSpeechSynthesisVoice *speechVoice = [AVSpeechSynthesisVoice voiceWithLanguage:self.language];
    speechUt.voice = speechVoice;
    [speechSyn speakUtterance:speechUt];
}


@end
