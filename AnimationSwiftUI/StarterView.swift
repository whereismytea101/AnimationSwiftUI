//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 04.11.2022.
//

import SwiftUI

struct StarterView: View {
    
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
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
