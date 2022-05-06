//
//  TabsPage.swift
//  PomodoroApp
//
//  Created by Saltanat Kuanyshbek on 06.05.2022.
//

import SwiftUI

struct TabsPage: View {
    @State private var selectedTab: Int = 1
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .white
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    var body: some View {
        TabView(selection: $selectedTab){
            
            ContentView()
                .tabItem{
                Image(systemName: "house.circle").renderingMode(.template)
                    .accentColor(.white)
                Text("Main")
                    .foregroundColor(.white)
            }.accentColor(.white)
            .tag(1)
            //SecondState()
            //ThirdState()
            //FourthState()
            SettingsFirst()
                    .tabItem{
                        Image(systemName: "slider.horizontal.3").renderingMode(.template)
                            .accentColor(.white)
                        Text("Settings")
                            .foregroundColor(.white)
                    }.accentColor(.white)
                 .tag(2)
            
            //SettingsSecond()
            HistoryPage()
                .tabItem{
                    Image(systemName: "square.and.pencil").renderingMode(.template)
                        .accentColor(.white)
                    Text("History")
                        .foregroundColor(.white)
                }.accentColor(.white)
                .tag(3)
        }
        .accentColor(Color.white)
        
    }
}

struct TabsPage_Previews: PreviewProvider {
    static var previews: some View {
        TabsPage()
            .previewDevice("iPhone 12 Pro")
    }
}
