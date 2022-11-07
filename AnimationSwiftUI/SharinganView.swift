//
//  AwardsView.swift
//  AnimationSwiftUI
//
//  Created by Самир Кафаров on 04.11.2022.
//

import SwiftUI

struct SharinganView: View {
    
    @State private var sharingan = false
    
    
    var body: some View {
        ZStack {
 //           Button(action: <#T##() -> Void#>, label: <#T##() -> Label#>)
            Circle()
                .frame(width: 215)
                .opacity(0.1)
            Image("sharingan")
                .resizable()
                .frame(width: 200, height: 200)
                .shadow(radius: 20)
            
        }
    }
    
    struct AwardsView_Previews: PreviewProvider {
        static var previews: some View {
            SharinganView()
        }
    }
}
