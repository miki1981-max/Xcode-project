//
//  Survey1.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-14.
//

import SwiftUI

struct Survey1: View {
    @State private var care_reciever = ""
    @State private var checkcond = false
    
    var body: some View {
        
        VStack {
            VStack {
                VStack {
                    Text("Survey")
                        .padding(.bottom,20)
                }
                
                Spacer()
                Text("1.What is the care receiver's name?")
                TextField("", text:$care_reciever, prompt: Text("receiver's name")
                    .foregroundColor(Color.gray))
                    .padding(.horizontal,30)
                
                Spacer()
            }
            .background(Color.white)
            Spacer()
            VStack() {
                
                Text("2.Choose the gender")
                
                Spacer()
                Toggle(isOn: $checkcond) {
                    Text("Male")
                }
                .padding()
                
                Spacer()
                
                Toggle(isOn: $checkcond) {
                    Text("Female")
                    
                }
                
                Spacer()
                
            }
            
            .padding()
            
            
            
            
            NavigationLink(destination: Survey2 ()) {
                Text("Next")
                    .foregroundStyle(Color.blue)
                    .padding()
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        
        
        
    }
}

#Preview {
    Survey1()
}
