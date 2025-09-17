//
//  Slide2_Color.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide3_Color: View {
    var body: some View {
        ZStack {
//            Color.blue.ignoresSafeArea()
//            Color(UIColor(red: 0.1, green: 0.5, blue: 0.3, alpha: 1.0))
            Color(uiColor: .black)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundStyle(.yellow)
            
         
        }
    }
}

#Preview {
    Slide3_Color()
}
