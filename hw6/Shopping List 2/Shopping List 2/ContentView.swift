//
//  ContentView.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

class Items: Identifiable {
    
    var itemName: String
    
    var quantity: String
    
    init(itemName: String, quantity: String) {
        
        self.itemName = itemName
        
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    @State var tempItemName: String = ""
    
    @State var tempQuantity: String = ""
    
    /* use state wrapper for variable "list" to actively
     see changes made in the UI */
    @State var list = [
        Items(itemName: "Bananas", quantity: "3"),
        Items(itemName: "Apples", quantity: "4"),
        Items(itemName: "Eggs", quantity: "12")
    ]
    
    // function that appends item to array
    func addItem() {
        list.append(Items(itemName: tempItemName, quantity: tempQuantity))
        tempItemName = ""
        tempQuantity = ""
    }
    
    func removeItem() {
        list.removeLast()
    }
        
    var body: some View {
        NavigationView {
            List {
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
                
                HStack {
                    TextField("Item Name", text: $tempItemName)
                    
                    Spacer()
                    
                    TextField("Item Quantity", text: $tempQuantity)
                }
                
                Button("Add New Item") {
                    if tempItemName .isEmpty || tempQuantity .isEmpty {
                        return
                    } else {
                        addItem()
                    }
                }
                Button("Delete Item") {
                    removeItem()
                }
            }.navigationTitle("Shopping List")
        }
    }
}
