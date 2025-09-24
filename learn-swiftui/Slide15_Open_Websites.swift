//
//  Slide15_Open_Websites.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide15_Open_Websites: View {
    var body: some View {
        Link( destination: .init(string: "google.com")!) {
            Image(systemName: "globe")
        }
    }
}

#Preview {
    Slide15_Open_Websites()
}
