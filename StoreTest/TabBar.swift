//
//  TabBar.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 18.03.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case Home
    case Favorites
    case Cart
    case Messages
    case Profile
}

struct TabBar: View {
    
    @State var currentTab: Tab = .Home
    private var fillImage: String {
        currentTab.rawValue + ".fill"
    }
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        
        ZStack {
            
            TabView(selection: $currentTab) {
                
                HomePageView()
                    .tag(Tab.Home)
                
                FavoritesPageView()
                    .tag(Tab.Favorites)
                
                CartPageView()
                    .tag(Tab.Cart)
                
                MessagesPageView()
                    .tag(Tab.Messages)
                
                ProfilePageView()
                    .tag(Tab.Profile)
            }
            
            
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases,id: \.self) {tab in
                    Button {
                        currentTab = tab
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .background(currentTab == tab ? Capsule(style: .circular)
                                .opacity(0.1)
                                .frame(width: 50, height: 50) :
                                            Capsule(style: .circular)
                                                .opacity(0.0)
                                                .frame(width: 40, height: 40))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color(hex: "737297"): Color(hex: "909090"))
                    }
                }
            }
            .padding([.horizontal, .bottom])
            .frame(width: nil, height: 110)
            .background(Color.white)
            .cornerRadius(50, corners: .topLeft)
            .cornerRadius(50, corners: .topRight)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()

        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
