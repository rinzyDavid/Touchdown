//
//  AddToCartView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct AddToCartView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
            .padding(15)
            .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue))
            .clipShape(Capsule())
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
