//
//  Sharingan.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 05.11.2022.
//

import SwiftUI

struct secondSharinganView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            .overlay(Circle().stroke(Color.black, lineWidth: 6))
            .shadow(color: .black, radius: 50)
            Circle()
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
        }
    }
}

struct Sharingan_Previews: PreviewProvider {
    static var previews: some View {
        secondSharinganView()
    }
}
