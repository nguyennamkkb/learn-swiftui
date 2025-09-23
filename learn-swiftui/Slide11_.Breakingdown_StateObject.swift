//
//  Slide11_.Breakingdown_StateObject.swift
//  learn-swiftui
//
//  Created by Mac mini on 21/9/25.
//

import Combine
import SwiftUI

struct Slide11__Breakingdown_StateObject: View {
    @StateObject var vm = LoginViewModel()
    var body: some View {
        switch vm.currentState {
        case .loading:
            ProgressView()
        case .loggedIn:
            Text("Welcome, \(vm.user.username)!")
            Button("Logout") {
                vm.logout()
            }
        case .loggedOut:
            LoginViewA(user: $vm.user) {
                vm.login()
            }
        }
    }
}

struct LoginViewA: View {
    @Binding var user: User
    var didTapLogin: (() -> Void)?
    var body: some View {
        VStack {
            Text("Login View")
            TextField("Username",
                      text: $user.username,
                      prompt: Text("Enter username")
            )
            SecureField("Password",
                        text: $user.password,
                        prompt: Text("Enter password")
            )

            Button("Login") {
//                vm.login()
                self.didTapLogin?()
            }
        }
        .padding(.horizontal, 20)
        .textFieldStyle(.roundedBorder)
        .onChange(of: user) { newValue in
            print("User changed: \(newValue)")
        }
    }
}

struct User: Equatable {
    var username: String = ""
    var password: String = ""
}

final class LoginViewModel: ObservableObject {
    @Published var user: User = .init()

    enum CurrentState {
        case loggedIn, loggedOut, loading
    }

    @Published var currentState: CurrentState = .loggedOut
    func login() {
        currentState = .loading
        guard !user.username.isEmpty, !user.password.isEmpty else {
            currentState = .loggedOut
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: { [weak self] in
            guard let self = self else { return }
            self.currentState = .loggedIn
        })
    }

    func reset() {
        user = .init()
        currentState = .loggedOut
    }

    func logout() {
        currentState = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4, execute: { [weak self] in
            guard let self = self else { return }
            self.reset()
        })
    }
}

#Preview {
    Slide11__Breakingdown_StateObject()
}
