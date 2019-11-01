//
//  ContentView.swift
//  CleanAppSwiftUI
//
//  Created by Ricardo Ruiz on 26/10/2019.
//  Copyright © 2019 Ricardo Ruiz. All rights reserved.
//

import SwiftUI

struct Product : Identifiable {
    var id  = UUID()
    var name : String
    var image : String = "arkit"
}

struct ProductList: View {
    
    let products = [Product(name: "Product 1"), Product(name: "Product 2")]
    
    var body: some View {
        NavigationView {
            List(products) { product in
                ProductCell(product: product)
            }
            .navigationBarTitle("Products")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ProductList()
        }
    }
}

struct ProductCell : View {
    let product : Product
    
    var body: some View {
        NavigationLink(destination: Text(product.name)) {
            Image(systemName: product.image)
            Text(product.name).font(.subheadline)
        }
    }
}
