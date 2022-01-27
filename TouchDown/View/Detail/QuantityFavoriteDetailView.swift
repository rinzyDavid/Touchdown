//
//  QuantityFavoriteDetailView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "minus.circle")
               
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth:35)
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            Button(action: {
                feedback.impactOccurred()
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
                
        }
        .font(.system(.title3, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
