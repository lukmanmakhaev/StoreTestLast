//
//  SignInPageViewModel.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 12.03.2023.
//

import Foundation
import SwiftUI

class SignInViewPageModel: ObservableObject {
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var isDisabled: Bool = true
    @Published var email: String = "" {
        didSet {
            if self.email.isEmpty {
                self.emailError = "Required"
                self.isDisabled = true
            } else if !self.email.isValidEmail {
                self.emailError = "Invalid email"
                self.isDisabled = true
            } else  {
                self.emailError = ""
                self.isDisabled = false
            }
        }
    }
    @Published var emailError: String = ""
    
    
}
