//
//  RegistrationView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-05.
//

import SwiftUI

struct RegistrationView: View {
    @State private var First_Name = ""
    @State private var Last_Name = ""
    @State private var contacts = ""
    
    var body: some View {
        VStack {
            Text("Registration form")
                .font(.title)
                
            TextField("", text:$First_Name, prompt: Text("Enter your name")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .lineSpacing(10)
                
            TextField("", text:$Last_Name, prompt: Text("Enter your last name")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .lineSpacing(10)

            TextField("", text:$contacts, prompt: Text("Enter your mobile phone or e mail")
                .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .lineSpacing(10)
                .navigationBarTitle("Profile",
                    displayMode:.inline)
           
            
            
            
        
        
        
            NavigationLink(destination: GeneralinformationIView2()) {
            
                Text("Sign up")
                    .foregroundColor(Color.blue)
                    .frame(width: 100.0, height:50)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)

        }
    }
}

#Preview {
    RegistrationView()
}
