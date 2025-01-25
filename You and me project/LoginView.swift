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
            
            TextField("", text:$mail, prompt: Text("Enter your e-mail")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .offset(y:-80)
                .lineSpacing(10)

            

            SecureField("", text:$password, prompt: Text("Enter your password")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .offset(y:-80)
                
            
            NavigationLink(destination: RecommendationsView1()) {
                Text("Sign in")
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
        }
    
        
    }
}

#Preview {
    LoginView()
}
