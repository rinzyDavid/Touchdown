//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct CategoryItemView: View {
    let category:Category
    var body: some View {
        
        Button(action: {}){
            HStack(alignment: .center, spacing: 6){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width:30,height:30,alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }.padding()
                .background(Color.white.cornerRadius(12))
                .background(RoundedRectangle(cornerRadius: 12)
                                .stroke(.gray,lineWidth: 1)
                )
            //HSTACK
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
