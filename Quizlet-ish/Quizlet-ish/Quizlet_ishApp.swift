//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Chris Spencer on 11/18/22.
//

import SwiftUI
import Firebase

@main
struct Quizlet_ishApp: App {
    
    init() {
            FirebaseApp.configure()
          }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
