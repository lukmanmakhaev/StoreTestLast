//
//  HomePageView.swift
//  StoreTest
//
//  Created by Lukman Makhaev on 18.03.2023.
//

import SwiftUI

struct HomePageView: View {
    
    @StateObject var viewModel = HomePageViewModel()
    
    var body: some View {
        ZStack {
            Color(hex: "FAF9FF")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (showsIndicators: false) {
                
                VStack (alignment: .leading) {
                    
                    HomeNavBar()
                    
                    SearchBar()
                    
                    CategoriesView()
                    
                    LatestView()
                    
                    FlashSaleView()
                    
                    BrandsView()

                }
                .padding(.bottom, 80)
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

struct HomeNavBar: View {
    var body: some View {
        HStack {
            Button (action: {
                
            }, label: {
                Image("Menu").resizable().frame(width: 22, height: 22)
            })
            .padding(.bottom)
            
            Spacer()
            
            HStack {
                Text("Trade by")
                    .font(.custom("Montserrat-Bold", size: 24))
                + Text (" bata")
                    .font(.custom("Montserrat-Bold", size: 24))
                .foregroundColor(.blue)
            }
            .padding(.bottom)
                
            
            
            Spacer()
            
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color.green)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                
                Button (action: {
                    
                }, label: {
                    HStack {
                        Text("Location")
                            .font(.custom("Montserrat-Regular", size: 10))
                            .foregroundColor(.black)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(width: 10, height: 5)
                            .foregroundColor(.black)
                    }
                })
            }
        }
        .padding(.horizontal)
    }
}

struct SearchBar: View {
    @StateObject var viewModel = HomePageViewModel()

    var body: some View {
        VStack {
            HStack {
                
                TextField("What are you looking for?", text: $viewModel.search)
                    .multilineTextAlignment(.center)
                Image("search")
                    .resizable()
                    .frame(width: 19, height: 19)
                    .padding(.trailing, 8)
            }
            .padding(.all, 10)
            .background(Color(hex: "F5F6F7"))
            .cornerRadius(20.0)
            .padding(.horizontal)
        }
        .padding(.top, 11)
    }
}

struct CategoryItemView: View {
    var icon: String
    var title: String
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color(hex: "EEEFF4"))
                        .frame(width: 55, height: 55)
                    Image(icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
                
                Text(title)
                    .font(.custom("Montserrat-Light", size: 10))
                    .foregroundColor(.black)
            }
        })
    }
}

struct CategoriesView: View {
    @StateObject var viewModel = HomePageViewModel()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0 ..< viewModel.categiroes.count) { category in
                    CategoryItemView(icon: viewModel.categiroes[category].icon, title: viewModel.categiroes[category].title)
                }
            }
            .padding(.leading)
        }
        .padding(.top, 17)
    }
}

struct LatestItem: View {
    var body: some View {
        ZStack (alignment: .leading) {
            ZStack {
                Image("image1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Image("gradient")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)

            HStack {
                VStack ( alignment: .leading) {
                    Text("Phones")
                        .font(.custom("Montserrat-Bold", size: 6))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .background(Color(hex: "C4C4C4"))
                        .cornerRadius(10)
                        .padding(.leading, 7)
                    
                    Text("Samsung S10")
                        .font(.custom("Montserrat-Bold", size: 10))
                        .padding(.leading, 7)
                        .padding(.bottom, 17)
                        .foregroundColor(Color.white)
                    
                    Text("$180.000")
                        .font(.custom("Montserrat-Bold", size: 10))
                        .padding(.leading, 7)
                        .padding(.bottom, 7)
                        .foregroundColor(Color.white)
                }
                .frame(maxHeight: 175, alignment: .bottom)
                
                Spacer()
                
                VStack {
                    Spacer()
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color(hex: "E5E9EF"))
                                .frame(width: 25, height: 25)
                            
                            Button(action: {
                                
                            }, label: {
                                Image("plus")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                            })
                        }
                    }

                }
                .frame(maxHeight: 175, alignment: .bottom)
                .padding(.trailing, 7)
                .padding(.bottom, 13)
            }
        }
        .frame(width: 130, height: 175)
        .cornerRadius(10)
    }
}

struct LatestView: View {
    var body: some View {
        
        HStack {
            Text("Latest")
                .font(.custom("Montserrat-SemiBold", size: 24))

            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("View all")
                    .font(.custom("Montserrat-SemiBold", size: 13))
                    .foregroundColor(.gray)
            })
        }
        .padding(.horizontal)
        .padding(.top, 25)
        
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                
                ForEach(0 ..< 5) { i in
                    LatestItem()
                }
            }
            .padding(.leading)
        }
    }
}

struct FlashSaleItem: View {
    var body: some View {
        ZStack {
            
            ZStack {
                Image("image1")
                    .resizable()
                Image("gradient")
                    .resizable()
            }
            .aspectRatio(contentMode: .fill)
            
            HStack {
                
                VStack ( alignment: .leading) {
                    
                    Text("Kids")
                        .font(.custom("Montserrat-SemiBold", size: 13))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .background(Color(hex: "c4c4c4"))
                        .cornerRadius(10)
                    
                    Text("New balance")
                        .font(.custom("Montserrat-Bold", size: 13))
                        .padding(.bottom, 17)
                        .foregroundColor(Color.white)
                        .frame(alignment: .leading)
                    
                    Text("$33,00")
                        .font(.custom("Montserrat-Bold", size: 13))
                        .padding(.bottom, 14)
                        .foregroundColor(Color.white)
                    
                }
                .frame(width: 100, height: 220, alignment: .bottom)
                .padding(.leading, 4)
                //vstack 2.1
                
                VStack {
                    //Sale
                    HStack {
                        Text("30% off")
                            .font(.custom("Montserrat-SemiBold", size: 13))
                            .padding(.horizontal, 7)
                            .padding(.vertical, 4)
                            .foregroundColor(.white)
                            .background(Color(hex: "F93A3A"))
                            .cornerRadius(20)
                            .padding(.top, 4)
                        
                    }
                    Spacer()
                    
                    HStack {
                        //Favourite Button
                        ZStack {
                            Circle()
                                .fill(Color(hex: "E5E9EF"))
                                .frame(width: 27, height: 27)
                            
                            Button(action: {
                                
                            }, label: {
                                Image("heart")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 12, height: 12)
                            })
                        }
                        
                        //Plus Button
                        ZStack {
                            Circle()
                                .fill(Color(hex: "E5E9EF"))
                                .frame(width: 37, height: 37)
                            
                            Button(action: {
                                
                            }, label: {
                                Image("plus")
                                    .resizable()
                                    .frame(width: 17, height: 17)
                            })
                        }
                        .padding(.leading, -3)
                    }
                }
                .padding(.bottom, 7)
                .padding(.trailing, 10)
                .frame(width: 75, height: 220, alignment: .bottom)
                //vstack 2.2
            }
        }
        .frame(width: 185, height: 230)
        .cornerRadius(10)
    }
}

struct FlashSaleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Flash Sale")
                    .font(.custom("Montserrat-SemiBold", size: 24))
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("View all")
                        .font(.custom("Montserrat-SemiBold", size: 13))
                        .foregroundColor(.gray)
                })
            }
            .padding(.horizontal)
            .padding(.top, 13)
            
            ScrollView (.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    ForEach(0 ..< 5) { i in
                        FlashSaleItem()
                    }
                
                }
                .padding(.leading)
                //ZStack
            }
        }
    }
}

struct BrandItem: View {
    var body: some View {
        ZStack {
            ZStack {
                Image("image1")
                    .resizable()
                Image("gradient")
                    .resizable()
            }
            .aspectRatio(contentMode: .fill)
            
            HStack {
                VStack {
                    Spacer()
                    Text("New balance")
                        .font(.custom("Montserrat-Bold", size: 14))
                        .padding(.bottom, 17)
                        .foregroundColor(Color.white)
                        .frame(alignment: .leading)
                }
                .frame(width: 115, height: 150)
            }
        }
        .frame(width: 115, height: 150)
        .cornerRadius(10, corners: .allCorners)
    }
}

struct BrandsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Brands")
                    .font(.custom("Montserrat-SemiBold", size: 24))
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("View all")
                        .font(.custom("Montserrat-SemiBold", size: 13))
                        .foregroundColor(.gray)
                })
            }
            .padding(.horizontal)
            .padding(.top, 13)
            
            ScrollView (.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(0 ..< 5) { i in
                        BrandItem()
                    }
                }
                .padding(.leading)
                //ZStack
            }
        }
    }
}
