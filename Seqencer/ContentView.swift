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
    @State private var showPopUp = false
    @State var isLongPressing = false

    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 2){
                Text(env.display).onReceive(env.timer){ input in
                    env.stepCount()
                    env.seqPlay()
                }.foregroundColor(Color.white)
                HStack{
                    Button("Stop", action: {
                        env.timer.upstream.connect().cancel()
                        })
                    Button("Start", action: {
                        env.timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                        })
                    Button("Retrigger", action: {
                        env.timer.upstream.connect()
                        })
                    Button("Record",action: {
//                            RecordingAction()
                        })
                }
                
                HStack{
                    if env.timeRemaining == 8{
                        self.makeButton(key: .A8, bgColor: .red)
                        self.makeButton(key: .B8, bgColor: .red)
                        self.makeButton(key: .C8, bgColor: .red)
                        self.makeButton(key: .D8, bgColor: .red)
                    }else{
                        self.makeButton(key: .A8, bgColor: .green)
                        self.makeButton(key: .B8,bgColor: .green)
                        self.makeButton(key: .C8, bgColor: .green)
                        self.makeButton(key: .D8, bgColor: .green)
                    }
                }
                
                HStack{
                    if env.timeRemaining == 7{
                        self.makeButton(key: .A7, bgColor: .red)
                        self.makeButton(key: .B7, bgColor: .red)
                        self.makeButton(key: .C7, bgColor: .red)
                        self.makeButton(key: .D7, bgColor: .red)
                    }else{
                        self.makeButton(key: .A7, bgColor: .green)
                        self.makeButton(key: .B7,bgColor: .green)
                        self.makeButton(key: .C7, bgColor: .green)
                        self.makeButton(key: .D7, bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining == 6{
                        self.makeButton(key: .A6, bgColor: .red)
                        self.makeButton(key: .B6, bgColor: .red)
                        self.makeButton(key: .C6, bgColor: .red)
                        self.makeButton(key: .D6, bgColor: .red)
                    }else{
                        self.makeButton(key: .A6, bgColor: .green)
                        self.makeButton(key: .B6,bgColor: .green)
                        self.makeButton(key: .C6, bgColor: .green)
                        self.makeButton(key: .D6, bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining == 5{
                        self.makeButton(key: .A5, bgColor: .red)
                        self.makeButton(key: .B5, bgColor: .red)
                        self.makeButton(key: .C5, bgColor: .red)
                        self.makeButton(key: .D5, bgColor: .red)
                    }else{
                        self.makeButton(key: .A5, bgColor: .green)
                        self.makeButton(key: .B5,bgColor: .green)
                        self.makeButton(key: .C5, bgColor: .green)
                        self.makeButton(key: .D5, bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining == 4{
                        self.makeButton(key: .A4, bgColor: .red)
                        self.makeButton(key: .B4, bgColor: .red)
                        self.makeButton(key: .C4, bgColor: .red)
                        self.makeButton(key: .D4, bgColor: .red)
                    }else{
                        self.makeButton(key: .A4, bgColor: .green)
                        self.makeButton(key: .B4,bgColor: .green)
                        self.makeButton(key: .C4, bgColor: .green)
                        self.makeButton(key: .D4, bgColor: .green)
                    }
                    
                }
            
                HStack{
                    if env.timeRemaining == 3{
                        self.makeButton(key: .A3, bgColor: .red)
                        self.makeButton(key: .B3, bgColor: .red)
                        self.makeButton(key: .C3, bgColor: .red)
                        self.makeButton(key: .D3, bgColor: .red)
                    }else{
                        self.makeButton(key: .A3, bgColor: .green)
                        self.makeButton(key: .B3,bgColor: .green)
                        self.makeButton(key: .C3, bgColor: .green)
                        self.makeButton(key: .D3, bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining == 2{
                        self.makeButton(key: .A2, bgColor: .red)
                        self.makeButton(key: .B2, bgColor: .red)
                        self.makeButton(key: .C2, bgColor: .red)
                        self.makeButton(key: .D2, bgColor: .red)
                    }else{
                        self.makeButton(key: .A2, bgColor: .green)
                        self.makeButton(key: .B2,bgColor: .green)
                        self.makeButton(key: .C2, bgColor: .green)
                        self.makeButton(key: .D2, bgColor: .green)
                    }
                    
                }
                
                HStack{
                    if env.timeRemaining  == 1{
                        self.makeButton(key: .A1, bgColor: .red)
                        self.makeButton(key: .B1, bgColor: .red)
                        self.makeButton(key: .C1, bgColor: .red)
                        self.makeButton(key: .D1, bgColor: .red)
                    }else{
                        self.makeButton(key: .A1, bgColor: .green)
                        self.makeButton(key: .B1,bgColor: .green)
                        self.makeButton(key: .C1, bgColor: .green)
                        self.makeButton(key: .D1, bgColor: .green)
                    }
                    
                }
//            Spacer(minLength: 2)
            }
            if $showPopUp.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Sample Menu")
                        Spacer()
                        Button(action: {
                            self.showPopUp = false
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200, alignment: .center)
                .cornerRadius(20).shadow(radius: 20)
            }
        }
    }

    
    func makeButton(key: PressedKey = .A1, width: CGFloat = 60, height: CGFloat = 60, bgColor: Color = Color(white: 0.4)) -> some View {
        return AnyView(
            Button(action: {
                print("tap")
                if(self.isLongPressing){
                    self.isLongPressing.toggle()
                } else {
                    //just a regular tap
                    env.keyPressed(key: key)
                }
            }, label: {
                Text(key.rawValue)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(bgColor)
                .cornerRadius(35)
                .font(.system(size: 28))
                .foregroundColor(.white)
        })).simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded { _ in
            print("long press")
            self.isLongPressing = true
            self.showPopUp = true
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalState())
    }
}

