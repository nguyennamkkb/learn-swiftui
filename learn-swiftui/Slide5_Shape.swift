//
//  Slide5_Shape.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide5_Shape: View {
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.red)
                .frame(width: 200, height: 50)
            
            Capsule(style: .circular)
                .fill(LinearGradient(colors: [.red, .green], startPoint: .top, endPoint: .bottom))
                .frame(width: 200, height: 50)
                
            
            Capsule(style: .continuous)
                .fill(RadialGradient(colors: [.gray, .red], center: .center, startRadius: 10, endRadius: 50))
                .frame(width: 50, height: 50)
            
            Circle()
                .frame(width: 40, height:
                        50)
            
            Rectangle()
                .frame(width: 200, height: 50)
                .cornerRadius(20)
            Ellipse()
                .frame(width: 200, height: 20)
                
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 50)
            Image("image1")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
        }
    }
}

#Preview {
    Slide5_Shape()
}
