//
//  UserViewModel.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 23/9/25.
//

import Combine
import SwiftUI

class UserViewModel: ObservableObject {
    @Published var user: User = .init()
    @Published var isLoading: Bool = false
    @Published var currentState: CurrentState = .logout
    
    enum CurrentState {
        case isLoading
        case loggedIn
        case logout
        case required
    }
    
    func login() {
        currentState = .isLoading
        guard user.username.isEmpty == false, user.password.isEmpty == false else {
            currentState = .required
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.currentState = .loggedIn
        }
    }
    
    func reset() {
        user = .init()
    }
    
    func logout() {
        currentState = .logout
        reset()
    }
}

struct UserModel {
    var username: String = ""
    var password: String = ""
    
}
