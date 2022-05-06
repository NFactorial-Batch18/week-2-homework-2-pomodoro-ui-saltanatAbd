//
//  SettingsFirst.swift
//  PomodoroApp
//
//  Created by Saltanat Kuanyshbek on 06.05.2022.
//

import SwiftUI

struct SettingsFirst: View {
    @State private var selectedTab: Int = 2
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .white
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    var body: some View {
       
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .background(Color(red:0.2/255, green: 0.2/255, blue:0.2/245))
                VStack(alignment: .center, spacing: 1){
                Text("Settings")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 130, height: 22, alignment: .center)
                    .padding(.bottom, 30)
                    HStack{
                        Text("Focus time")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding()
                        Spacer()
                        TextField("Time", text: .constant("25:00"))
                            .foregroundColor(.white)
                            .background(.black)
                            .frame(width: 50, height: 22, alignment: .center)
                            
                    }
                    Divider()
                        .background()
                        .frame(width: 374, alignment: .center)
                    HStack{
                        Text("Break time")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding()
                        Spacer()
                        TextField("Time", text: .constant("05:00"))
                            .foregroundColor(.white)
                            .background(.black)
                            .frame(width: 50, height: 22, alignment: .center)
                    }
                    Divider()
                        .background()
                        .frame(width: 374, alignment: .center)
                    Spacer()
                }
            }
    }
}

struct SettingsFirst_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFirst()
            .previewDevice("iPhone 12 Pro")
    }
}
