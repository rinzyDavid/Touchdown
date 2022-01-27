//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []){
                
                Section(
                    header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories){category in
                        CategoryItemView(category: category)
                    }
                }
                
            }.frame(height:140)
                .padding(.vertical,15)
                .padding(.horizontal,10)
            //MARK - LAZYHGRID
        }//MARK - SCROLLVIEW
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
