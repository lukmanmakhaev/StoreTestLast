//
//  ProfilePageView.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 14.03.2023.
//

import SwiftUI

struct ProfilePageView: View {
    var body: some View {
        
        ZStack {
            Color(hex: "f0f0f0")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Satria Adhi Pradana")
                    .font(.custom("Montserrat-Bold", size: 16))
                
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        
                        Text("Upload item")
                            .padding()
                    }
                    .frame(height: 40)
                    .foregroundColor(Color.white)
                    .font(.custom("Montserrat-Medium", size: 16))
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "4E55D7"))
                    .cornerRadius(15.0)
                }
                .padding(.top, 35)
                .padding(.horizontal, 30)
                
            }
            .padding()
        }
          
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
