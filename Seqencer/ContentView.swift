//
//  ContentView.swift
//  SwiftUI-example
//
//  Created by patrick kelly on 2/3/21.
//


import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    @EnvironmentObject var env: GlobalState
//     @State private var timeRemaining = 8
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 2){
                Text(env.display).onReceive(env.timer){ input in
                    env.stepCount()
                }.foregroundColor(Color.white)
                HStack{
                    if env.timeRemaining == 8{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                HStack{
                    if env.timeRemaining == 7{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                HStack{
                    if env.timeRemaining == 6{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                HStack{
                    if env.timeRemaining == 5{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                HStack{
                    if env.timeRemaining == 4{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
            
                HStack{
                    if env.timeRemaining == 3{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining == 2{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining  == 1{
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                        self.makeButton(bgColor: .red)
                    }else{
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                        self.makeButton(bgColor: .green)
                    }
                    
                }
//                Spacer(minLength: 2)
            }
        }
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "hi", withExtension: "wav")

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
    
    func makeButton(title: String = "", width: CGFloat = 65, height: CGFloat = 65, bgColor: Color = Color(white: 0.4)) -> some View {
        return AnyView(
            Button(action: {
                playSound()
            }, label: {
                Text("")
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(bgColor)
                .cornerRadius(35)
                .font(.system(size: 28))
                .foregroundColor(.white)
        }))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalState())
    }
}

