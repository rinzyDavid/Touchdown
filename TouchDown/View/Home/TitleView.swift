//
//  TitleView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct TitleView: View {
    var title:String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.bold)
            Spacer()
        }.padding(.horizontal)
            .padding(.top,15)
            .padding(.bottom,10)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
