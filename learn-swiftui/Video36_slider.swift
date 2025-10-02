//
//  Video36_slider.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video36_slider: View {
    @State private var volume: Double = 0
    @State private var hasChangeed: Bool = false
    private var renge: ClosedRange<Double> = 0 ... 100
    private var step: Double = 5
    var body: some View {
        Text("Current volume: \(volume, specifier: "%.1f")")
        HStack {
            decreaseBtn
            Slider(value: $volume, in: renge, step: step) {
                
            }minimumValueLabel: {
                Text("\(Int(renge.lowerBound))")
            } maximumValueLabel: {
                Text("\(Int(renge.upperBound))")
            } onEditingChanged: { hasChange in
                self.hasChangeed = hasChange
            }
            increaseBtn
        }
    }

    var increaseBtn: some View {
        Button {
            withAnimation {
                guard volume < renge.upperBound else {
                    return
                }
                volume += step
            }
        } label: {
            Image(systemName: "plus")
        }
        .opacity(hasChangeed ? 0.5 : 1)
        .disabled(hasChangeed)

    }

    var decreaseBtn: some View {
        Button {
            withAnimation {
                guard volume > renge.lowerBound else {
                    return
                }
                volume -= step
            }
        } label: {
            Image(systemName: "minus")
        }
        .opacity(hasChangeed ? 0.5 : 1)
        .disabled(hasChangeed)
    }
}

#Preview {
    Video36_slider()
}
