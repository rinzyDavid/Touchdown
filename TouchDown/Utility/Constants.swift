//
//  Constants.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct:Product = products[0]
let sizes: [String] = ["XS","S","M","L","XL"]
//COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(.systemGray4)

//LAYOUT
let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
//API
//FONT
//STRING
//MISC
