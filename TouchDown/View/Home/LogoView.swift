//
//  LogoView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing:4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width:30, height:30,alignment: .center)
            
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }//MARK - HSTACk
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
