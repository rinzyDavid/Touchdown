//
//  NavBarDetailView.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import SwiftUI

struct NavBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                    feedback.impactOccurred()
                }
            }){
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }//MARK - button
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }){
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }.padding(5)
        //MARK - HSTACK
    }
}

struct NavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
