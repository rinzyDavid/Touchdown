//
//  ContentView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct ContentView: View {
  //MARK - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK - BODY
    var body: some View {
       
        ZStack{
            if !shop.showingProduct && shop.selectedProduct == nil{
                VStack(spacing:0) {
                NavBarView()
                    .padding()
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(spacing:0) {
                        FeaturedTabView()
                            .frame(height:200)
                            .padding(.vertical,20)
                        
                        CategoryGridView()
                        TitleView(title: "Helmet")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15){
                            ForEach(products){product in
                                ProductItemView(product: product)
                                    .onTapGesture(perform: {
                                        withAnimation(.easeOut){
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                            feedback.impactOccurred()
                                        }
                                    })
                            }
                        }
                        .padding()
                            
                        TitleView(title: "Brands")
                        BrandGridView()
                           
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
                
                
            }
                .background(colorBackground).ignoresSafeArea(.all, edges: .all)
            } else {
                ProductDetialView()
            }
            
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
