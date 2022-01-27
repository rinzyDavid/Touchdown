//
//  NavBarView.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

struct NavBarView: View {
    //MARK - PROPERTIES
    
    @State private var isAnimated = false
    
    //MARK - BODY
    var body: some View {
        HStack {
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {}){
                Image(systemName: "magnifyingglass")
                    .font(.title3)
                    .foregroundColor(.black)
            }//BUTTON
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action: {}){
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle().fill(.red)
                        .frame(width:14,height:14,alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
        //MARK - HSTACK
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
