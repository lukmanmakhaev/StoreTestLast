//
//  CategoryItem.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 20.03.2023.
//

import Foundation
import SwiftUI


struct CategoryItem {

    var icon: String
    var title: String
    //var isSelected: Bool?

}

//ZStack (alignment: .leading) {
//    ZStack {
//        Image("image1")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//
//
//        Image("gradient")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(maxWidth: .infinity)
//
//
//    }
//    .frame(maxWidth: .infinity)
//
//
//    HStack {
//        VStack ( alignment: .leading) {
//            Text("Kids")
//                .font(.custom("Montserrat-Bold", size: 10))
//                .padding(.horizontal, 12)
//                .padding(.vertical, 2)
//                .background(Color(hex: "C4C4C4"))
//                .cornerRadius(10)
//                .padding(.leading, 7)
//
//            Text("New balance")
//                .font(.custom("Montserrat-Bold", size: 13))
//                .padding(.leading, 7)
//                .padding(.bottom, 17)
//                .foregroundColor(Color.white)
//                .frame(alignment: .leading)
//
//            Text("$33,00")
//                .font(.custom("Montserrat-Bold", size: 13))
//                .padding(.leading, 7)
//                .padding(.bottom, 14)
//                .foregroundColor(Color.white)
//        }
//        .frame(maxWidth: .infinity, maxHeight: 221, alignment: .bottom)
//
//        Spacer()
//
//        VStack {
//            Spacer()
//
//            HStack {
//
//                ZStack {
//                    Circle()
//                        .fill(Color(hex: "E5E9EF"))
//                        .frame(width: 27, height: 27)
//
//                    Button(action: {
//
//                    }, label: {
//                        Image("heart")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 12, height: 12)
//                    })
//                }
//
//                ZStack {
//                    Circle()
//                        .fill(Color(hex: "E5E9EF"))
//                        .frame(width: 37, height: 37)
//
//                    Button(action: {
//
//                    }, label: {
//                        Image("plus")
//                            .resizable()
//                            .frame(width: 17, height: 17)
//                    })
//                }
//            }
//
//        }
//        .frame(maxHeight: 221, alignment: .bottom)
//        .padding(.trailing, 7)
//        .padding(.bottom, 13)
//
//
//    }
//
//}
//.frame(width: 174, height: 221)
//.cornerRadius(10)
