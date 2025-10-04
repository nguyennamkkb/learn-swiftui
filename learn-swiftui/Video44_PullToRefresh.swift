//
//  Video44_PullToRefresh.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import Combine
import SwiftUI

struct Video44_PullToRefresh: View {
    @StateObject private var vm = PeopleViewModel1()
    
    var body: some View {
        NavigationView{
            PeopleView(vm: vm)
                .refreshable {
                    vm.generatePeople()
                }
                
        }
    }
}

struct PeopleView: View {
    @ObservedObject var vm: PeopleViewModel1
    
    var body: some View {
        List{
            Text("Pull down to add a random person")
                
            ForEach(vm.people) { person in
                HStack{
                    Text(person.name)
                    Spacer()
                    Text("\(person.age)")
                }
            }
        }

        .navigationTitle("Random People")
    }
}

final class PeopleViewModel1: ObservableObject {
    @Published private(set) var people: [Person2] = []
    @Published var isLoading: Bool = false

    private let data: [Person2] = [
        Person2(name: "Alice", age: 30),
        Person2(name: "Bob", age: 25),
        Person2(name: "Charlie", age: 35),
        Person2(name: "Diana", age: 28),
        Person2(name: "Ethan", age: 32),
        Person2(name: "Fiona", age: 27),
        Person2(name: "George", age: 29),
        Person2(name: "Hannah", age: 31),
        Person2(name: "Ian", age: 26),
        Person2(name: "Jane", age: 33),
        Person2(name: "Kevin", age: 24)
    ]

    
    
    func generatePeople() {
        Task {
            isLoading = true
//            Thread.sleep(forTimeInterval: 1.5)
            withAnimation{
                people.append(data.randomElement()!)
                isLoading = false
            }
        }
    }
}

#Preview {
    Video44_PullToRefresh()
}
