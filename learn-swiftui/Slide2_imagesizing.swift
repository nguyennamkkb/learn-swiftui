//
//  Slide_imagesizing.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide_imagesizing: View {
    var body: some View {
        Image("image1")
            .resizable()
            .frame(width: 100, height: 100)
    }
}

#Preview {
    Slide_imagesizing()
}
