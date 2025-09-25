//
//  LoginView.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 23/9/25.
//

import Combine
import SwiftUI

class AppTheme: ObservableObject {
    @Published var textColor: Color = .red
    init(textColor: Color) {
        self.textColor = textColor
    }
}

struct LoginView: View {
    

    @StateObject var viewModel = UserViewModel()
    @State private var appName: String = "Mini App"
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            switch viewModel.currentState {
            case .isLoading:
                VStack(spacing: 12) {
                    ProgressView()
                        .tint(.white)
                    Text("Loading...")
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.7))

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
//                EmptyView()
//                Text("Hello")
//                    .padding()
//                    .background(Color.yellow)
//                    .cornerRadius(62)
//                    .border(Color.red, width: 3)
            case .required:
                ProgressView()
            }
        }
    }
}

#Preview {
    
    LoginView()
}
