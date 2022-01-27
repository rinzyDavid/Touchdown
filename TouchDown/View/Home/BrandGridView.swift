//
//  BrandGridView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing){
                
                ForEach(brands){brand in
                    BrandItemView(brand: brand)
                }
            }.frame(height:200)
                .padding(15)
        }//scrollview
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
