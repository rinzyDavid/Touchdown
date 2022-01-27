//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(shop.selectedProduct?.name ?? "Helmet")
                .font(.title)
                .fontWeight(.black)
        }.foregroundColor(.white)
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
