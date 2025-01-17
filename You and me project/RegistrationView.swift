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
            
            
            
                
                TextField("Enter your First name",text:$First_Name)
                    .padding()
                
                TextField("Enter your Last name",text:$Last_Name)
                    .padding()
                
                TextField("Enter your mobile number or e mail",text:$contacts)
                    .padding()
                    .navigationBarTitle("Profile",
                                        displayMode:.inline)
                
            
           
            
            
            
        
        
        
        NavigationLink(destination: GeneralinformationIView2()) {
            
            Text("Sign up")
                .foregroundStyle(Color.blue)
                .background(Color.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        }
        
    }
}

#Preview {
    RegistrationView()
}
