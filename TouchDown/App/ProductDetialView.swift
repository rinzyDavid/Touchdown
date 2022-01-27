//
//  ProductDetialView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct ProductDetialView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            //MARK - NAVBAR
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //MARK - HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //MARK - DETAIL TOP PART
            TopPartDetailView()
                .zIndex(1)
                .padding(.horizontal)
            //MARK - DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //MARK - RATING AND SIZES
                RatingsSizesDetailView()
                    .padding(.top,-25)
                    .padding(.bottom,10)
                //MARK - DESCRIPTION
                ScrollView(.vertical,showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                }
                //MARK - QUANTITY + FAVOURITE
                QuantityFavoriteDetailView()
                    .padding(.vertical,10)
                
                //MARK - ADD TO CART
                AddToCartView()
                    .padding(.bottom,20)
               
                
            }).padding()
                .background(
                    Color.white.clipShape(CustomShape())
                        .padding(.top,-105)
                )
            //MARK - vstack
           
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
                        .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetialView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetialView()
            .previewLayout(.fixed(width: 375, height: 840))
            .environmentObject(Shop())
    }
}
