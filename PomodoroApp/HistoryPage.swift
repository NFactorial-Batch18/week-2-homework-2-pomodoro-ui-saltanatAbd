//
//  HistoryPage.swift
//  PomodoroApp
//
//  Created by Saltanat Kuanyshbek on 06.05.2022.
//

import SwiftUI

struct HistoryPage: View {
    @State private var selectedTab: Int = 3
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
                Text("History")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 130, height: 22, alignment: .center)
                    .padding(.bottom, 30)
                    VStack{
                        Text("21.11.21")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 390, height: 25, alignment: .leading)
                
                        HStack{
                            Text("Focus time")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding(.top)
                            Spacer()
                            TextField("Time", text: .constant("1:28:00"))
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(width: 60, height: 22, alignment: .center)
                                .padding(.top)
                            }
                        Divider()
                            .background()
                            .frame(width: 374, alignment: .center)
                    HStack{
                        Text("Break time")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding(.top)
                        Spacer()
                        TextField("Time", text: .constant("05:00"))
                            .foregroundColor(.white)
                            .background(.black)
                            .frame(width: 50, height: 22, alignment: .center)
                            .padding(.top)
                    }
                        Divider()
                            .background()
                            .frame(width: 374, alignment: .center)
                    Spacer()
                        VStack{
                            Text("20.11.21")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                                .frame(width: 390, height: 25, alignment: .leading)
                    
                            HStack{
                                Text("Focus time")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .padding(.top)
                                Spacer()
                                TextField("Time", text: .constant("25:00"))
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .frame(width: 50, height: 22, alignment: .center)
                                    .padding(.top)
                                }
                            Divider()
                                .background()
                                .frame(width: 374, alignment: .center)
                        HStack{
                            Text("Break time")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding(.top)
                            Spacer()
                            TextField("Time", text: .constant("05:00"))
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(width: 50, height: 22, alignment: .center)
                                .padding(.top)
                        }
                            Divider()
                                .background()
                                .frame(width: 374, alignment: .center)
                  
                        }
                        VStack{
                            Text("21.11.21")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                                .frame(width: 390, height: 25, alignment: .leading)
                    
                            HStack{
                                Text("Focus time")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .padding(.top)
                                Spacer()
                                TextField("Time", text: .constant("25:00"))
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .frame(width: 50, height: 22, alignment: .center)
                                    .padding(.top)
                                }
                            Divider()
                                .background()
                                .frame(width: 374, alignment: .center)
                        HStack{
                            Text("Break time")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding(.top)
                            Spacer()
                            TextField("Time", text: .constant("05:00"))
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(width: 50, height: 22, alignment: .center)
                                .padding(.top)
                        }
                            Divider()
                                .background()
                                .frame(width: 374, alignment: .center)
                        Spacer()
                        }
                    }
                }
            }
    }
}


struct HistoryPage_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPage()
            .previewDevice("iPhone 12 Pro")
    }
}
