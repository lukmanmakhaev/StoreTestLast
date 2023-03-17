//
//  Coordinator.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 16.03.2023.
//

import SwiftUI

    //text for testing
// second testing
    //git hub

enum Page: String, Identifiable {
    case login, signIn, profile
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ page: Page) {
        path.append(page)
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
        case .profile:
            ProfilePageView()
            
        }
    }
    
}

