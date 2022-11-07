//
//  AnimatedBackground.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 06.11.2022.
//

import SwiftUI

struct AnimatedBackground: View {
    @State private var start = UnitPoint(x: 0, y: -2)
    @State private var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .default).autoconnect()
    let colors = [
        Color.black,
        Color.red
    ]
    var body: some View {
         LinearGradient(gradient: Gradient(colors: colors),
                        startPoint: start,
                        endPoint: end)
         .animation(Animation.easeInOut(duration: 6.0)
            .repeatForever()
         ).onReceive(timer, perform: { _ in
             self.start = UnitPoint(x: 1, y: 0)
             self.end = UnitPoint(x: 0, y: 2)
             self.start = UnitPoint(x: 1, y: 0)
         })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBackground()
    }
}
