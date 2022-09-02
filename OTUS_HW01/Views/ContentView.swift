//
//  ContentView.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            ProfileScreen()
                .tag(0)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            DashboardScreen()
                .tag(1)
                .tabItem {
                    Label("Dashboard", systemImage: "music.mic.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
