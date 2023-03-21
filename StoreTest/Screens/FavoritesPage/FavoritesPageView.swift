//
//  BookmarksPage.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 18.03.2023.
//

import SwiftUI

struct FavoritesPageView: View {
    var body: some View {
        ZStack {
            Color(hex: "f0f0f0")
                .edgesIgnoringSafeArea(.all)
            
            Text("Favorites")
        }
    }
}

struct FavoritesPageView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesPageView()
    }
}
