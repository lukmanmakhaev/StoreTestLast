//
//  FlashSaleProduct.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 22.03.2023.
//

import Foundation

struct FlashSaleProduct: Codable {
    var category: String
    var name: String
    var price: Float
    var discount: Int
    var image_url: String
}
