//
//  LoginView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-05.
//

import SwiftUI



struct LoginView: View {
    @State private var mail = ""
    @State private var password = ""
    
    var body: some View {

        VStack {
            
            Text("Please,sign in")
                    .font(.title)
                    .padding(.bottom,200)
                    
                    
                    .navigationBarTitle("Profile",
                                        displayMode:.inline)
            
            TextField("Enter your e mail",text:$mail)
                .padding()
                .offset(y:-80)
                
            SecureField("Enter your password,text",text:$password)
                .padding()
                .offset(y:-80)
            
            
            
            Text("You entered:\(password)")
                .padding()
                .offset(y:-80)
                
            NavigationLink(destination: RecommendationsView1()) {
                Text("Sign in")
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.white)
                
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
        }
    
        
        
    
        
      }
    }



#Preview {
    LoginView()
}
