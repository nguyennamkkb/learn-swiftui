//
//  Video37_AddingText_TextStyle.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video37_AddingText_TextStyle: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .font(.system(size: 20, weight: .bold, design: .default).italic())

            Text("My text here!")
                .foregroundStyle(.mint)
                .font(.largeTitle.weight(.black))

            Text("My text here!")
                .foregroundStyle(.blue)
                .font(.system(
                    size: 18,
                    weight: .semibold,
                    design: .rounded
                ))

            Text(.now, style: .timer)

            Text(.now, style: .time)

            Text(.now, style: .date)
            
            Text(Date.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
            
            
            Text(7.2, format: .currency(code: "GBP"))
            Text(7.2, format: .currency(code: "USD"))
            Text(Date.now...Date.now.addingTimeInterval(3600))
             
            Text("View calender \(Image(systemName: "calendar")) here" )
        }
    }
}

#Preview {
    Video37_AddingText_TextStyle()
}
