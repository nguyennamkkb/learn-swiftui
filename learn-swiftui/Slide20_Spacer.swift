//
//  Slide20_Spacer.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 25/9/25.
//

import SwiftUI

struct Slide20_Spacer: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Name:")
                    .font(.title)
                    .background(.green)
                Spacer()
                Text("Namnl")
                    .font(.largeTitle)
                    .background(.red)
            }
            .background(.yellow)

            HStack {
                Spacer()
                Text("Name:")
                    .font(.title)
                    .background(.green)
                Text("Namnl")
                    .font(.largeTitle)
                    .background(.red)
            }
            .background(.yellow)

            HStack {
                Text("Name:")
                    .font(.title)
                    .background(.green)
                Text("Namnl")
                    .font(.largeTitle)
                    .background(.red)
                Spacer()
            }
            .background(.yellow)

            HStack {
                Spacer()
                Text("Name:")
                    .font(.title)
                    .background(.green)

                Text("Namnl")
                    .font(.largeTitle)
                    .background(.red)
                Spacer()
            }
            .background(.yellow)

            HStack {
                Text("Name:")
                    .font(.title)
                    .background(.green)
                Spacer(minLength: 20)

                Text("Namnl")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                    .background(.red)
            }
            .background(.yellow)
        }
    }
}

#Preview {
    Slide20_Spacer()
}
