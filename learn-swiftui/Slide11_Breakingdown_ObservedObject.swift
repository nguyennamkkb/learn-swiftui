//
//  Slide11_.Breakingdown_StateObject.swift
//  learn-swiftui
//
//  Created by Mac mini on 21/9/25.
//

import Combine
import SwiftUI

struct Slide11_Breakingdown_ObservedObject: View {
    @StateObject var vm = LoginViewModel2()
    var body: some View {
        switch vm.currentState {
        case .loading:
            ProgressView()
        case .loggedIn:
            LogoutView2(vm: vm)
        case .loggedOut:
            LoginView2(vm: vm)
        }
    }
}

struct LoginView2: View {
    @ObservedObject var vm: LoginViewModel2
    var body: some View {
        VStack {
            Text("Login View")
            TextField("Username",
                      text: $vm.user.username,
                      prompt: Text("Enter username")
            )
            SecureField("Password",
                        text: $vm.user.password,
                        prompt: Text("Enter password")
            )

            Button("Login") {
                vm.login()
            }
        }
        .padding(.horizontal, 20)
        .textFieldStyle(.roundedBorder)
    }
}

struct LogoutView2: View {
    @ObservedObject var vm: LoginViewModel2
    var body: some View {
        VStack {
            Text("You have been logged out.")

            Button("Logout") {
                vm.logout()
            }
        }
        .padding(.horizontal, 20)
        .textFieldStyle(.roundedBorder)
    }
}

final class LoginViewModel2: ObservableObject {
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
