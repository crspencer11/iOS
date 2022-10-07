//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//
 
import SwiftUI
 
struct ContentView: View {
    @State var number: Double = 50
    @State var toggle: Bool = false
 
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                
                Spacer()
    
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
            }
            
            Spacer()
            
            VStack() {
                Text("Move the slider to:").font(.system(size:30))
                Text(String(number)).font(.system(size:30))
                Slider(value: $number, in: 1...100)
                Button("Check") {
                }
            }
            .padding(.bottom, 350)
            .padding(.leading, 50)
            .padding(.trailing, 50)
            Text("Exact Mode")
            Toggle("", isOn: $toggle)
                .padding(.leading, 150)
                .padding(.trailing, 170)
        }
    }
}


