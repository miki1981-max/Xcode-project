//
//  RegistrationView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-05.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name = ""

    @State private var contacts = ""
    @State private var password = ""
    @State var navigateToGeneralInfo = false
    
    @State var firebase =  Firebasecode()

    var body: some View {
        VStack {
            Text("Registration form")
                .font(.title)
                
            TextField("", text:$name, prompt: Text("Enter your name and last name")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .lineSpacing(10)
                

            TextField("", text:$contacts, prompt: Text("Enter  e mail")
                
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .lineSpacing(10)
            
            SecureField("", text:$password, prompt: Text("Enter your password")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .navigationBarTitle("Profile",
                    displayMode:.inline)
           
            if firebase.loginerror != nil {
                Text(firebase.loginerror!)
            }
            
            
        
        
        
        
                Button(action:{
                    firebase.userRegister(email: contacts, password: password, name: name)
                    navigateToGeneralInfo = true
                }) {
                    Text("Sign up")
                        .foregroundColor(Color.blue)
                        .frame(width: 100.0, height:50)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .navigationDestination( isPresented:$navigateToGeneralInfo) {
                    GeneralinformationIView2()
            }

        }
    }
}

#Preview {
    RegistrationView()
}
