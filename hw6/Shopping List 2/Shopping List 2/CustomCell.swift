//
//  CustomCell.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

struct CustomCell: View {
    
    var itemName: String
    
    var quantity: String
    
    var body: some View {
        HStack {
            Text(itemName)
                .padding()
            
            Spacer()
            
            Text(quantity)
        }
    }
}
