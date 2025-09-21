//
//  Slide8_Passing_Data_BW_View.swift
//  learn-swiftui
//
//  Created by Mac mini on 20/9/25.
//

import SwiftUI

struct Slide8_Passing_Data_BW_View: View {
    @State var isLoading: Bool = false
    var body: some View {
        Slide8_Second_View(isLoading: $isLoading)
        Toggle("Loading", isOn: $isLoading)
            .labelsHidden()
    }
}

struct Slide8_Second_View: View {
    @Binding var isLoading: Bool
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
                
            }
            Text(isLoading ? "Start loading" : "Finish loading")
        }
       
    }
}

#Preview {
    Group {
        Slide8_Passing_Data_BW_View()
    }
}
