//
//  GlobalState.swift
//  SwiftUI-example
//
//  Created by patrick kelly on 2/8/21.
//

import Foundation
import AVFoundation

class GlobalState: ObservableObject {
    @Published var display = "8"
    @Published var timeRemaining = 8
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func stepCount(){
        if timeRemaining > 1 {
            timeRemaining -= 1
            display = String(timeRemaining)
        }else{
            timeRemaining = 8
            display = String(timeRemaining)
        }
    }
}

