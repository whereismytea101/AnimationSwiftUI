//
//  blablaExample.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 07.11.2022.
//

import SwiftUI

struct blablaExample: View {
    @State private var iaAnimated = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10){

                EyeView(
                    isAnimated: $iaAnimated,
                    eyeTitle: "InterpolationSpring",
                    color: .brown,
                    animation: .interpolatingSpring(
                        mass: 1,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0
                    )
                    .delay(0.2)
                )
                EyeView(
                    isAnimated: $iaAnimated,
                    eyeTitle: "Spring",
                    color: .orange,
                    animation: .spring(
                        response: 0.55,
                        dampingFraction: 0.45,
                        blendDuration: 0
                    )
                    .speed(0.5)
                )
            }
            Spacer()
        }
        .onTapGesture {
            iaAnimated.toggle()
        }
    }
}


struct blablaExample_Previews: PreviewProvider {
    static var previews: some View {
        blablaExample()
    }
}


struct EyeView: View {
    @Binding var isAnimated: Bool
    
    let eyeTitle: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image("sharingan")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .offset(x: isAnimated ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: isAnimated)
            Text(eyeTitle)
        }
    }
}
