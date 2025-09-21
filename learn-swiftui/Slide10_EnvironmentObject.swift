//
//  Slide10_EnvironmentObject.swift
//  learn-swiftui
//
//  Created by Mac mini on 21/9/25.
//

import Combine
import SwiftUI

struct Slide10_EnvironmentObject: View {
    @StateObject private var purchaseVM = PurchaseViewModel()
    var body: some View {
        TabView {
            Slide10_ViewA()
                .environmentObject(purchaseVM)
                .tabItem {
                    Label("View A", systemImage: "person")
                }

            Slide10_ViewB()
                .environmentObject(purchaseVM)
                .tabItem {
                    Label("View A", systemImage: "person")
                }
        }
    }
}

struct Slide10_ViewA: View {
    @EnvironmentObject var purchaseVM: PurchaseViewModel
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Button {
                purchaseVM.purchase()
            } label: {
                Text("Purchase now")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 5)
                    )
            }
        }
    }
}

struct Slide10_ViewB: View {
    @EnvironmentObject var purchaseVM: PurchaseViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                if purchaseVM.isLoading {
                    ProgressView()
                }

                Image(systemName: purchaseVM.isPurchased ? "lock.open.fill" : "lock.fill")
                    .foregroundStyle(purchaseVM.isPurchased ? .yellow : .red)
                    .font(.title)
                    
                Text(purchaseVM.isPurchased ? "Purchased" : "Not purchased")
            }
        }
    }
}

final class PurchaseViewModel: ObservableObject {
    @Published var isPurchased: Bool = false
    @Published var isLoading: Bool = false

    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: { [weak self] in
            guard let self = self else { return }
            self.isLoading = false
            self.isPurchased = true

        })
    }
}

#Preview {
    Slide10_EnvironmentObject()
}
