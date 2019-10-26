//
//  ContentView.swift
//  CleanAppSwiftUI
//
//  Created by Ricardo Ruiz on 26/10/2019.
//  Copyright © 2019 Ricardo Ruiz. All rights reserved.
//

import SwiftUI

struct ProductList: View {
    
    let products = [Product(productName: "Product 1"), Product(productName: "Product 2")]
    
    var body: some View {
        
        NavigationView {
            List(products) { product in
                HStack {
                    Image(systemName: "contact")
                    Text(product.productName)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}

struct Product : Identifiable {
    var id  = UUID()
    var productName : String
}
