//
//  Video40_Background_Overlay.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video40_Background_Overlay: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(.yellow)

                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background( // duoc 1 view
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.white)
                            .font(.system(size: 32))
                    )
                    .background(.yellow)

                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background { // ngoac nhon tuong tu zstack, duoc nhieu view
                        Circle()
                            .fill(.yellow.opacity(0.3))

                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    }
                
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(alignment: .bottom) { // ngoac nhon tuong tu zstack, duoc nhieu view
         

                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    }
                
                Image(.image1)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.white)
                    .font(.footnote.weight(.bold))

                    .padding()
                    .background(
                        Circle()
                            .fill(.blue)
                    )
                    .overlay(alignment: .bottom) { // ngoac
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundStyle(.yellow)
                            .font(.system(size: 32))
                        
                    }
            }
        }
    }
}

#Preview {
    Video40_Background_Overlay()
}
