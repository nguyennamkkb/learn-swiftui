//
//  Video39_ControlGroup.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video39_ControlGroup: View {
    var decrease: some View {
        Button {
            print("decrease")
        } label: {
            Label("decrease", systemImage: "minus")
        }
    }

    var increase: some View {
        Button {
            print("increase")
        } label: {
            Label("increase", systemImage: "plus")
        }
    }

    var body: some View {
        ScrollView {
            VStack {
                Text("Quality")
                ControlGroup {
                    decrease
                    increase
                }
                Text("Quality")

                ControlGroup {
                    
                    decrease
                    increase
                }
                .controlGroupStyle(.navigation)
                
                ControlGroup {
                    
                    decrease
                    increase
                }
                .controlGroupStyle(.quality)
            }
        }
    }
}

struct ControlGroupQuality: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            Label("Quality", systemImage: "bag")
                .font(.body.weight(.bold))
            HStack {
                configuration.content
            }
        }
    }
}

extension ControlGroupStyle where Self == ControlGroupQuality {
    static var quality: ControlGroupQuality {
        .init()
    }
}

#Preview {
    Video39_ControlGroup()
}
