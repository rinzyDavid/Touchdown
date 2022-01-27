//
//  Shop.swift
//  TouchDown
//
//  Created by david on 21/12/2021.
//

import Foundation

class Shop : ObservableObject{
    
   @Published var showingProduct = false
   @Published var selectedProduct: Product?
}
