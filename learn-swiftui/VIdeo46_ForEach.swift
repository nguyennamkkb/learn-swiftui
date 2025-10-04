//
//  VIdeo46_ForEach.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let firstName: String
    let lastName: String
}

extension Person {
    static var data: [Person] {
        [
            Person(firstName: "John", lastName: "Doe"),
            Person(firstName: "John", lastName: "Smith"),
            Person(firstName: "Alice", lastName: "Johnson")
        ]
    }
}
    
struct VIdeo46_ForEach: View {
    @State private var people: [Person] = []
    var body: some View {
        VStack() {
            ForEach(people, id: \.id) { person in
                Text("\(person.firstName) \(person.lastName)")
            }
            Spacer()
        }
        .onAppear {
            self.people = Person.data
        }
    }
}

#Preview {
    VIdeo46_ForEach()
}
