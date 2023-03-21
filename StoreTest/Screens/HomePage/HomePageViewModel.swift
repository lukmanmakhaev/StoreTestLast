//
//  HomePageViewModel.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 20.03.2023.
//

import Foundation
import Combine


class HomePageViewModel: ObservableObject {
    
    @Published var search: String = ""
    
    let categiroes = [
        CategoryItem(icon: "phone", title: "Phone"),
        CategoryItem(icon: "headphone", title: "Headphones"),
        CategoryItem(icon: "games", title: "Games"),
        CategoryItem(icon: "car", title: "Cars"),
        CategoryItem(icon: "bed", title: "Furniture"),
        CategoryItem(icon: "robot", title: "Kids"),
    ]
    
    
    
    
}
