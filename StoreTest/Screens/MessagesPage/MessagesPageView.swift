//
//  MessagesPageView.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 18.03.2023.
//

import SwiftUI

struct MessagesPageView: View {
    var body: some View {
        ZStack {
            Color(hex: "f0f0f0")
                .edgesIgnoringSafeArea(.all)
            
            Text("Messages")
        }
    }
}

struct MessagesPageView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesPageView()
    }
}
