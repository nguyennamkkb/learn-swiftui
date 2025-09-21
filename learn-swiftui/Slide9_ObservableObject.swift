//
//  Slide9_ObservableObject.swift
//  learn-swiftui
//
//  Created by Mac mini on 21/9/25.
//

import SwiftUI
import Combine

struct Slide9_ObservableObject: View {
    @StateObject var vm = PeopleViewModel()
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
                Text("Loading...")
            }else{
                Text(vm.people.isEmpty ? "No user" : "\(vm.people.count) users")
            }
            
//            Button("Fetch some users", action: vm.fetchPeople)
            
            Button {
                vm.fetchPeople()
            } label: {
                Text("Fetch some users")
            }
        }
    }
}

final class PeopleViewModel : ObservableObject {
    @Published var people: [String] = []
    @Published var isLoading: Bool = false
    
    
    func fetchPeople() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.people = ["A", "B", "C"]
            self.isLoading = false
        }
    }
}

#Preview {
    Slide9_ObservableObject()
}
