//
//  Slide28_TextInputs.swift
//  learn-swiftui
//
//  Created by Mac mini on 28/9/25.
//

import SwiftUI

struct Slide28_TextInputs: View {
    struct User {
        var username: String = ""
        var password: String = ""
    }

    @State private var user = User()
    @FocusState private var inputForcus: Bool
    var body: some View {
        VStack {
            usernameTxtVw
            passwordTxtVw
            submitBtn
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .autocorrectionDisabled(true)
        .textInputAutocapitalization(.never)
        .toolbar {
            ToolbarItem(placement: .keyboard, content: {
                Spacer()
                Button("Done") {
                    inputForcus = false
                }
            })
        }
        .onSubmit {
            submit()
        }
    }
}

private extension Slide28_TextInputs {
    var usernameTxtVw: some View {
        TextField(
            "Username",
            text: $user.username,
            prompt: Text("Username")
        )
        .textContentType(.username)
        .focused($inputForcus)
    }

    var passwordTxtVw: some View {
        SecureField(
            "Password",
            text: $user.password,
            prompt: Text("Password")
        )
        .textContentType(.password)
        .focused($inputForcus)
        .submitLabel(.done)
    }

    var submitBtn: some View {
        Button {
            submit()
        } label: {
            Text("Submit")
        }
    }
}

private extension Slide28_TextInputs {
    func submit() {
        print("The user inputted Username: \(user.username), Password: \(user.password)")
        inputForcus = false
    }
}

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    Slide28_TextInputs()
}
