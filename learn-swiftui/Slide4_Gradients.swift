//
//  Slide4_Gradients.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide4_Gradients: View {
    var body: some View {
        ZStack {
            //mau chuyen doi deu
//            LinearGradient(
//                gradient: Gradient(colors: [.red,.blue,.white]), startPoint: .bottom, endPoint: .top
//            ).ignoresSafeArea()

            //mau chuyen doi tuy chinh kich thuoc theo ty le
//            LinearGradient(
//                stops: [.init(color: .red, location: 0.3), .init(color: .green, location: 0.5), .init(color: .blue, location: 0.3)]
//                , startPoint: .bottom, endPoint: .top
//            ).ignoresSafeArea()

            //gradient tron dong tam
//            RadialGradient(
//                colors: [.accentColor,.pink,.purple],
//                center: .center,
//                startRadius: 50,
//                endRadius: 100
//            )
            
      
            AngularGradient(colors: [.red, .green, .blue], center: .center, angle: .degrees(120))
                .mask{
                    Text("Hello World")
                        .bold()
                        .font(.largeTitle)
                }
            
//            Text("Hello World")
//                .padding()
//                .background{
//                    AngularGradient(colors: [.red, .green, .blue], center: .center, angle: .degrees(120))
//                }
        }
    }
}

#Preview {
    Slide4_Gradients()
}
