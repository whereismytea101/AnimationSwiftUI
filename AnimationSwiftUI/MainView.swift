//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    @State private var sharingan = false
    
    var body: some View {
        
        ZStack {
            AnimatedBackground()
            .ignoresSafeArea()
            VStack {
                Button(action: buttonAction) {
                    HStack {
                        Text(awardIsShowing ? "Hide Award" : "Show Award")
                        Spacer()
                        Image(systemName: "eye")
                            .scaleEffect(awardIsShowing ? 2 : 1)
                            .rotationEffect(.degrees(awardIsShowing ? 180 : -180))
                            .onAppear() {
                                withAnimation(Animation.easeInOut(duration: 1))
                                {
                                    sharingan.toggle()
                                }
                            }
                    }
                    
                }
                
                Spacer()
                if awardIsShowing {
                    
                    SharinganView()
                        .ignoresSafeArea()
                        .rotationEffect(.degrees(sharingan ? 180 : -180))
                        .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 2))
                            {
                                sharingan.toggle()
                            }
                        }
                }
                Spacer()
            }
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
