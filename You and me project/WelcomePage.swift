//
//  Welcome page.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-03.
//

import SwiftUI

struct WelcomePage: View {
    let items = [
        "To create a care plan",
        "To keep notes in a diary",
        "To use the library"
    ]

    var body: some View {
        
            
            VStack {
                
                VStack  {
                    
                    Text("This App helps you")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .padding()
                    
                    Text("To create a care plan")
                    Text("To keep notes in a diary")
                    Text("To use the library")
                        .navigationBarTitle("Welcome",
                                            displayMode:.inline)
                    
                    NavigationLink(destination: LoginView ()) {
                        Text("Log in")
                            .foregroundStyle(Color.blue)
                            .padding()
                            .background(Color.white)
                        
                        
                    }
                    NavigationLink(destination: RegistrationView ()) {
                        Text ("Registration")
                            .padding()
                            .foregroundStyle(Color.black)
                            .font(.largeTitle)
                            .font(.system(size:24))
                            
                    }
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
            }
        }
    }
    #Preview { 
        
        WelcomePage()
    }


