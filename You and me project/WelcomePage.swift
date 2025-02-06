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
        
        VStack{
            Text("This App helps you")
                .font(.largeTitle)
                .italic()
                .foregroundColor(.blue)
                .padding(.top,200)
            
            
            Text("To create a care plan")
            Text("To keep notes in a diary")
            Text("To use the library")
                
                .navigationBarTitle("Profile",
                                    displayMode:.inline)
            VStack{
                NavigationLink(destination: LoginView()) {
                    Text("Log in")
                    
                        .foregroundStyle(Color.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                }
                
                NavigationLink(destination: RegistrationView()) {
                    Text("Registration")
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
