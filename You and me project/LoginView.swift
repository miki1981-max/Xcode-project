//
//  LoginView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-05.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth


struct SecureTextField: View {
    @State private var isSecureField: Bool = true
    @Binding var text: String
    var body: some View {
        HStack {
            if isSecureField {
                SecureField("Password",text:$text)
            } else {
                TextField(text,text: $text)
            }
        }.overlay(alignment:.trailing){
            Image(systemName: isSecureField ? "eye.slash": "eye")
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
        }
    }
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State var firebase =  Firebasecode()
    
    var body: some View {

        VStack {
            Spacer()
            
            Text("Please,log in")
                .font(.title)
                .padding(.bottom,100)
                .navigationBarTitle("Profile",
                displayMode:.inline)

            
            TextField("", text:$email, prompt: Text("Enter your e-mail")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .padding(.bottom,30)
            
            SecureTextField(text:$password)
                .padding(.horizontal,30)
                .padding(.bottom,30)
                            
                
                
            
        
            
           
            
                
                
            
           
            
            
            
            
            
            Button( action: {
                Task {
                    firebase.userLogin (email: email, password: password)
                }
                
            }) {

                Text("Log in")
                    .frame(width:100.0,height:50)
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
