//
//  FourthState.swift
//  PomodoroApp
//
//  Created by Saltanat Kuanyshbek on 05.05.2022.
//

import SwiftUI

struct FourthState: View {
    @State private var selectedTab: Int = 1
    var body: some View {

            ZStack{
            Image("BG")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .padding(.bottom, 50)
                    .overlay(TintOverlay().opacity(0.5))
                VStack{
                    ZStack{
                        Button(" "){}
                        HStack{
                        Image(systemName: "pencil")
                            Text("Focus category")
                                .foregroundColor(.white)
                        }
                        .frame(width: 170, height: 36, alignment: .center)
                        .background(.gray)
                        .opacity(0.8)
                        .cornerRadius(16)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                        .position(x: 195, y: 150)
                        }
                    }
                VStack{
                ZStack{
                    VStack{
                        Text("04:48")
                            .foregroundColor(.white)
                            .font(.system(size: 44))
                            .bold()
                
                        Text("Break")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .padding(.bottom, 100)
                        }
                    ZStack{
                        Circle()
                            .stroke(lineWidth: 6)
                            .frame(width: 248, height:248, alignment: .center)
                            .opacity(0.3)
                            .foregroundColor(.white)
                            .padding(.bottom, 100)
                        Circle()
                            .trim(from: 0.0, to: 0.09)
                            .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color.white)
                            .opacity(0.6)
                            .rotationEffect(Angle(degrees: 270))
                            .frame(width: 248, height:248, alignment: .center)
                            .padding(.bottom, 100)
                            }
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 400, height: 362, alignment: .center)
                            .padding(.top,500)
                        VStack{
                            ZStack{
                     
                                Text("Focus Category")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17))
                                    .bold()
                                    .frame(width: 200, height: 17, alignment: .center)
                                    .padding(.top, 420)
                                Image(systemName: "xmark")
                                    .frame(width: 358, height: 20, alignment: .trailing)
                                    .padding(.trailing,8)
                                    .padding(.top, 420)
                                    .padding()
                            }
                
                            VStack(alignment: .center, spacing: 20) {
                                        HStack(alignment: .center, spacing: 16) {
                                            customButtom(buttonName: "Work")
                                            customButtom(buttonName: "Study")
                                            }
                                HStack(alignment: .center, spacing: 16) {
                                    Button("Workout"){}
                                        .frame(width: 172, height: 60, alignment: .center)
                                        .background(.black)
                                        .cornerRadius(16)
                                        .foregroundColor(.white)
                                    
                                    customButtom(buttonName: "Reading")
                                }
                                HStack(alignment: .center, spacing: 16) {
                                    customButtom(buttonName: "Meditation")
                                    customButtom(buttonName: "Others")
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
struct customButtom: View{
    let buttonName:String
    
    var body: some View{
        Button(buttonName){}
        .frame(width: 172, height: 60, alignment: .center)
        .background(Color(red:234/255, green: 234/255, blue:234/245))
        .cornerRadius(16)
        .foregroundColor(.black)
}
}
struct FourthState_Previews: PreviewProvider {
    static var previews: some View {
        FourthState().previewDevice("iPhone 12 Pro")
    }
}
