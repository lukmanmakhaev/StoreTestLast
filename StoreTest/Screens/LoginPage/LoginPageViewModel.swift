//
//  LoginPageViewModel.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 13.03.2023.
//

import Foundation


class LoginPageViewModel: ObservableObject {
    
    @Published var firstName: String = ""
    @Published var password: String = ""
    
}
