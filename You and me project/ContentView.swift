//
//  ContentView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-01.
//
import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @State var isLoggedIn : Bool?
        
        var body: some View {
          
            VStack {
                if isLoggedIn == true {
                    GeneralinformationIView2()
                }
                if isLoggedIn == false {
                    StartPageView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear() {
                Auth.auth().addStateDidChangeListener { auth, user in
                    print("USER CHANGE")
                    
                    if Auth.auth().currentUser == nil {
                        isLoggedIn = false
                    } else {
                        isLoggedIn = true
                    }
                }
            }
        }
    
}

#Preview {
    ContentView() // interface
}
