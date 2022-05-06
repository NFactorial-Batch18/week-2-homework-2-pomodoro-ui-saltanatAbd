//
//  SecondState.swift
//  PomodoroApp
//
//  Created by Saltanat Kuanyshbek on 05.05.2022.
//

import SwiftUI

struct SecondState: View {
    @State private var selectedTab: Int = 1
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .white
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
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
                Text("24:32")
                    .foregroundColor(.white)
                    .font(.system(size: 44))
                    .bold()
        
                Text("Focus on your task")
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
            HStack{
                HStack{
                    Rectangle()
                        .frame(width: 60, height: 100, alignment: .leading)
                        .padding(.top, 400)
                        .opacity(0.0)
                    Button(" "){}
                Image(systemName: "pause.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 56))
                        .frame(width: 80, height: 80, alignment: .center)
                        .opacity(0.7)
                        .padding(.top, 350)
                        Spacer()
                    Button(" "){}
                Image(systemName: "stop.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 56))
                        .frame(width: 80, height: 80, alignment: .center)
                        .opacity(0.7)
                        .padding(.top, 350)
                    Rectangle()
                        .frame(width: 60, height: 100, alignment: .trailing)
                        .padding(.top, 400)
                        .opacity(0.0)
                }
                .opacity(0.6)
                Spacer()
            }
        }
        }
    }
    }
    }

struct SecondState_Previews: PreviewProvider {
    static var previews: some View {
        SecondState()
            .previewDevice("iPhone 12")
    }
}
