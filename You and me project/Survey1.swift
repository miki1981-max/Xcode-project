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
                
                    
                    Text("Survey")
                        .padding(.bottom,20)
                        .offset(y:-200)
                    
                    
                    Text("1.What is the care receiver's name?")
                        .offset(y:-200)
                    
                    TextField("receiver's name",text:$care_reciever)
                        .padding(.horizontal,30)
                        .offset(y:-170)
                    
                
                VStack() {
                
                    Text("2.Choose the gender")
                        .offset(y:-50)
                    
                    Toggle(isOn: $checkcond) {
                        Text("Male")
                    }
                    .padding()
                    
                    Toggle(isOn: $checkcond) {
                        Text("Female")
                        
                    }
                    
                }
                
                    .padding()
                
                
                    
                    
                    NavigationLink(destination: Survey2 ()) {
                        Text("Next")
                            .foregroundStyle(Color.blue)
                            .background(Color.white)
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
