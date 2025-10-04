//
//  Video50_LazyStack.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import SwiftUI

struct Video50_LazyStack: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(0..<100) { index in
                        Text("Item \(index)")
                    }
                }
                header: {
                    Text("Header")
                        .background(.yellow)
                }
                
                Section {
                    ForEach(0..<100) { index in
                        Text("Item \(index)")
                    }
                }
                header: {
                    Text("Header2")
                        .background(.yellow)
                }
            }
        }
        
    }
}

#Preview {
    Video50_LazyStack()
}
