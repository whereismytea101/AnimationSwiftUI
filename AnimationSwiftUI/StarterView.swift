//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 04.11.2022.
//

import SwiftUI

struct StarterView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            SharinganView()
                .tabItem {
                    Image(systemName: "eyes")
                    Text("Sharingan")
                }
            
            secondSharinganView()
                .tabItem {
                    Image(systemName: "eye")
                    Text("Awards")
                }
            ItachiView()
                .tabItem {
                    Image(systemName: "cloud")
                    Text("Ninja")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
