//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        
        TabView{
            ForEach(players){player in
                
                FeaturedItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
            
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("IPhone 12")
            .background(.gray)
    }
}
