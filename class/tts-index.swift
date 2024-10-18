import SwiftUI
import AVFoundation

class TtsDistributor {
    private var speechSynthesizer = AVSpeechSynthesizer()

    func distribute(_ text: String) {
        
        let utterance = AVSpeechUtterance(string: text)
        
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate
        utterance.pitchMultiplier = 1.0

        speechSynthesizer.speak(utterance)
        
    }
}
