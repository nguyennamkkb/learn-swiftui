//
//  LoginForm.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 23/9/25.
//

import Combine
import SwiftUI

struct LoginForm: View {
    @Binding var userName: String
    @Binding var password: String

    var loginTap: () -> Void
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Circle()
                .frame(width: 100, height: 100)
                .overlay(
                    Image(.image1)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                )

            Text("Login View")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()

            TextField("Username", text: $userName)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(.white, lineWidth: 2)
                )

            TextField("Password", text: $password)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(
                            LinearGradient(colors: [.blue, .white], startPoint: .leading, endPoint: .trailing)
                            , lineWidth: 2)
                )

            Button {
                loginTap()
            } label: {
                Rectangle()
                    .frame(height: 58)
                    .clipShape(RoundedRectangle(cornerRadius: 24)
                    )
                    .overlay(
                        Text("Login")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                    )
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 26)
    }
}
