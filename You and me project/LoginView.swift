//
//  LoginView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-05.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State var firebase =  Firebasecode()
    
    var body: some View {

        VStack {
            
            Text("Please,log in")
                .font(.title)
                .padding(.bottom,200)
                .navigationBarTitle("Profile",
                                    displayMode:.inline)
            
            TextField("", text:$email, prompt: Text("Enter your e-mail")
                .foregroundColor(Color.gray))
            .padding(.horizontal,30)
            .offset(y:-80)
            .lineSpacing(10)
            
            
            
            SecureField("", text:$password, prompt: Text("Enter your password")
                .foregroundColor(Color.gray))
            .padding(.horizontal,30)
            .offset(y:-80)
            
            
            Button( action: {
                Task {
                    await firebase.userLogin (email: email, password: password)
                }
                
            }) {
                Text("Log in")
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            
            }
            .padding()
        }
    
        
    }
}

#Preview {
    LoginView()
}
