//
//  Video49_Stack.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import SwiftUI

struct Video49_Stack: View {
    var body: some View {
//        ZStack(alignment: .bottom) {
//            Image(systemName: "star")
//                .resizable()
//                .scaledToFit()
//                .symbolVariant(.fill)
//                .foregroundStyle(.yellow)
//
//            Text("Hello, World!")
//
//        }

//        VStack(alignment: .leading, spacing: 30) {
//            ForEach(0 ... 10, id: \.self) { index in
//                Text("Item \(index)")
//            }
//        }

        HStack {
            ForEach(0 ... 10, id: \.self) { index in
                Text("Item \(index)")
            }
        }

    }
}

#Preview {
    Video49_Stack()
}
