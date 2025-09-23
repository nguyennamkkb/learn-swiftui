//
//  LoginView.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 23/9/25.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = UserViewModel()
    @State var appName: String = "Mini App"
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            switch viewModel.currentState {
            case .isLoading:
                VStack(spacing: 12) {
                    ProgressView()
                    Text("Loading...")
                }
            case .loggedIn:
                LogoutForm(
                    appName: $appName,
                    userName: $viewModel.user.username,
                    logout: {
                        viewModel.logout()
                    })
            case .logout:
                LoginForm(
                    userName: $viewModel.user.username,
                    password: $viewModel.user.password,
                    loginTap: {
                        viewModel.login()
                    })
            case .required:
                ProgressView()
            }
        }
    }
}

#Preview {
    LoginView()
}
