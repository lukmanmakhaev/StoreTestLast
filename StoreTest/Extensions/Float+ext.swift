//
//  Float+ext.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 22.03.2023.
//

import Foundation
extension Float {
    var cleanValue: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
