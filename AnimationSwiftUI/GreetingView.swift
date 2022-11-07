//
//  GreetingView.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 07.11.2022.
//

import SwiftUI

struct GreetingView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            StarterView()
        } else {
            
            VStack {
                ZStack {
                    AnimatedBackground()
                        .ignoresSafeArea()
                    Image("itachi")
                        .resizable()
                }
                .scaleEffect(size + 0.5)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeOut(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
    
    struct GreetingView_Previews: PreviewProvider {
        static var previews: some View {
            GreetingView()
        }
    }
}
