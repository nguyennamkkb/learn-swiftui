//
//  Slide27_DatePicker.swift
//  learn-swiftui
//
//  Created by Mac mini on 28/9/25.
//

import SwiftUI

struct Slide27_DatePicker: View {
    @State private var selectedDate = Date()
    
    private let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let min = calendar.date(byAdding: .year, value: -120, to: .now)
        let max = Calendar.current.date(byAdding: .year, value: -18, to: .now)
        return min! ... max!
    }()

    var body: some View {
        VStack {
            Text(selectedDate, style: .date)
            DatePicker(
                "Start Date",
                selection: $selectedDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .padding()

            DatePicker(
                "Start Date",
                selection: $selectedDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .labelsHidden()
            .padding()

            DatePicker(
                selection: $selectedDate,
                displayedComponents: [.date, .hourAndMinute]
            ) {
                Label("Select a Date", systemImage: "calendar")
            }
//            .labelsHidden()
            .padding()
            
            DatePicker(
                selection: $selectedDate,
                in: dateRange,
                displayedComponents: [.date]
            ) {
                Text("over 18 only")
            }
            .labelsHidden()
            .datePickerStyle(.graphical)
        }
    }
}

#Preview {
    Slide27_DatePicker()
}
