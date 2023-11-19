//
//  ContentView.swift
//  sceenIos
//
//  Created by Dmitry on 16.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem(){
                    Image("Home")
                    Text("Hello")
                }
            CalendarView()
                .tabItem(){
                    Image("calendar2")
                }
            MessagesView()
                .tabItem(){
                    Image("message")
                }
            ProfileVIew()
                .tabItem(){
                    Image("profile2")
                }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
