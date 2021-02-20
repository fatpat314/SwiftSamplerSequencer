//
//  GlobalState.swift
//  SwiftUI-example
//
//  Created by patrick kelly on 2/8/21.
//

import Foundation
import AVFoundation
import AVKit

class GlobalState: ObservableObject {
    @Published var display = "8"
    @Published var timeRemaining = 1
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var fileName: String = "hi"
    var fileExtension: String = "wav"
    
    var operation: PressedKey? = nil
    
    func stepCount(){
        if timeRemaining < 8 {
            timeRemaining += 1
            display = String(timeRemaining)
        }else{
            timeRemaining = 1
            display = String(timeRemaining)
        }
    }
    
//    func recordSample(){
//        
//        
//    }
    
    func playSound(fileName: String, fileExtension: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension)

        guard url != nil else{
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("error")
        }
        return
    }
    
    func seqPlay(){
//        auto trigger samples with corrisponding time
        if timeRemaining == 8{
//          A8.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B8.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C8.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D8.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 7{
//          A7.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B7.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C7.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D7.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 6{
//          A6.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B6.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C6.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D6.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 5{
//          A5.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B5.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C5.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D5.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 4{
//          A4.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B4.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C4.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D4.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 3{
//          A3.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B3.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C3.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D3.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 2{
//          A2.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B2.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C2.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D2.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else if timeRemaining == 1{
//          A1.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          B1.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          C1.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
//          D1.wav or mp3 or whatever
            playSound(fileName: "hi", fileExtension: "wav")
        }else{
//            do nothing
        }
    }
    
//    Each case should be able to contain a unique sample.
    func keyPressed(key: PressedKey) {
        switch key {
        case .A1:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A2:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A3:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A4:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A5:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A6:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A7:
            playSound(fileName: "hi", fileExtension: "wav")
        case .A8:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B1:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B2:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B3:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B4:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B5:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B6:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B7:
            playSound(fileName: "hi", fileExtension: "wav")
        case .B8:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C1:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C2:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C3:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C4:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C5:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C6:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C7:
            playSound(fileName: "hi", fileExtension: "wav")
        case .C8:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D1:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D2:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D3:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D4:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D5:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D6:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D7:
            playSound(fileName: "hi", fileExtension: "wav")
        case .D8:
            playSound(fileName: "hi", fileExtension: "wav")
        }
    }
}

