//
//  SignInPageView.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 12.03.2023.
//

import SwiftUI
import Combine


struct SignInPageView: View {
    
    //MARK: - Properties
    
    @ObservedObject var viewModel: SignInViewPageModel
    @EnvironmentObject private var coordinator: Coordinator
    

    //MARK: - View
    
    var body: some View {
   
        ZStack {
            VStack {
  
                Text("Sign In")
                    .font(.custom("Montserrat-Medium", size: 25))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 125)
                
                TextField("First name", text: $viewModel.firstName)
                    .multilineTextAlignment(.center)
                    .frame(height: 40)
                    .background(Color(hex: "f0f0f0"))
                    .cornerRadius(50)
                    .padding(.top, 78)
                    .font(.custom("Montserrat-Medium", size: 16))
            
                TextField("Last name",text: $viewModel.lastName)
                .multilineTextAlignment(.center)
                    .frame(height: 40)
                    .background(Color(hex: "f0f0f0"))
                    .cornerRadius(50)
                    .padding(.top, 35)
                    .font(.custom("Montserrat-Medium", size: 16))
            
                TextField("Email",
                          text: $viewModel.email)
                .multilineTextAlignment(.center)
                    .frame(height: 40)
                    .background(Color(hex: "f0f0f0"))
                    .cornerRadius(50)
                    .padding(.top, 35)
                    .font(.custom("Montserrat-Medium", size: 16))
                
                HStack {
                    Text(viewModel.emailError)
                        .foregroundColor(Color.red)
                        .font(.custom("Montserrat-Medium", size:12))
                    Spacer()
                    
                }
                
                Button(action: {
                    
                }) {
                    
                    HStack {
                        Text("Sign in")
                            .fontWeight(.black)
                    }
                    .frame(height: 60)
                    .foregroundColor(Color.white)
                    .font(.custom("Montserrat-Medium", size: 16))
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "4E55D7"))
                    .cornerRadius(20.0)
                }
                .padding(.top, 35)
                .disabled($viewModel.isDisabled.wrappedValue)
                   
                HStack {
                    Text("Already have an account?")
                        .font(.custom("Montserrat-Medium", size: 12))
                        .foregroundColor(Color(hex: "808080"))
                    Button(action: {
                        
                        coordinator.push(.login)
                        
                    }, label: {
                        Text("Log in")
                            .font(.custom("Montserrat-Medium", size: 12))
                    })
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 17.4)
                
                Button(action: {
                    coordinator.present(fullScreenCover: .contentView)
                }) {
                    
                    HStack {
                        Image("google")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .padding(.horizontal)
                        Text("Sign in with Google")
                            .foregroundColor(.black)
                    }
                    .font(.custom("Montserrat-Medium", size: 16))
                }
                .padding(.top, 74)
                
                Button(action: {
                    coordinator.present(fullScreenCover: .contentView)
                }) {
                    
                    HStack {
                        Image("apple")
                            .resizable()
                            .frame(width: 30,height: 35)
                            .padding(.horizontal)
                        Text("Sign in with Google")
                            .foregroundColor(.black)
                    }
                    .font(.custom("Montserrat-Medium", size: 16))
                }
                .padding(.top, 38)
                .padding(.bottom, 133)
                Spacer()
            }
            .padding()
        }
    }
}

//MARK: - Preview

struct SignInPageView_Previews: PreviewProvider {
    static var previews: some View {
        SignInPageView(viewModel: SignInViewPageModel())
            .previewDevice(.init(rawValue: "iPhone 14 Pro Max"))
    }
}


