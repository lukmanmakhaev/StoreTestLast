//
//  Coordinator.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 16.03.2023.
//

import SwiftUI

enum Page: String, Identifiable {
    case login, signIn
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case contentView
    
    var id: String {
        self.rawValue
    }
}


class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .signIn:
            SignInPageView(viewModel: SignInViewPageModel())
        case .login:
            LoginPageView(viewModel: LoginPageViewModel())
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .contentView:
            ContentView()
        }
    }
    
}

