//
//  Slide23_Stepper.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide23_Stepper: View {
    @State private var quality1: Int = 0

    var body: some View {
        VStack {
            Group {
                Text("The user selected a quality of \(quality1)")
                Stepper(
                    "Quality",
                    value: $quality1,
                    in: 0 ... 20,
                    step: 2
                )
            }

            Group {
                Text("The user selected a quality of \(quality1)")
                Stepper(
                    "",
                    value: $quality1,
                    in: 0 ... 20,
                    step: 2
                )
            }

            Group {
                Text("The user selected a quality of \(quality1)")
                Stepper(
                    "",
                    value: $quality1,
                    in: 0 ... 20,
                    step: 2
                )
                .labelsHidden()
            }

            Group {
                Stepper(
                    value: $quality1,
                    in: 0 ... 20,
                    step: 2
                ) {
                    Text("🍕Slide \(quality1)")
                } onEditingChanged: { editing in
                    print("quality is now \(quality1), editing: \(editing)")
                }
            
            }
        }
        .padding()
    }
}

#Preview {
    Slide23_Stepper()
}
