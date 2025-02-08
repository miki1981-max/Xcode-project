//
//  Survey12.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2025-01-25.
//

import SwiftUI

struct Survey12: View {
    @State private var selection = Set<String>()
    
    @State private var  name = ""
    @State private var care_reciever = ""
       
    let names = [
           "Male",
           "Female",
           
    
       ]

    var body: some View {
        VStack{
            
           
            VStack{
                VStack {
                    
                    Text("1.What is your care receiver's name?")
                        .padding()
                        .padding(.leading,-40)
                }
                .frame(maxWidth: .infinity)
                .background(Color.background)
                
                
                
                TextField("", text:$name, prompt: Text("Enter your name")
                    .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .padding(.top)
                VStack{
                    
                    Text("2.What is the care receiver's date of birth?")
                        .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color.background)
                
                TextField("", text:$care_reciever, prompt: Text("Enter the date")
                    .foregroundColor(Color.gray))
                    .padding(.horizontal,30)
                    .padding(.top)
                
                VStack{
                    
                    Text("3.Choose the gender")
                        .padding(.leading,-160)
                        .padding()
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color.background)
                
               
                
                    
                
                .navigationBarTitle("Survey",
                                    displayMode:.inline)
                
                
                
            
            
            
            
            
            
                
                
                    
                        
                        
                        
                        
            
                NavigationStack {
                    
                    List(names, id: \.self, selection: $selection) { name in
                        Text(name)
                        
                    }
                    
                    .toolbar {
                        EditButton()
                    }
                }
            }
                
                
                
            NavigationLink(destination: Survey3()) {
                Text("Next")
                    .frame(width: 100.0, height:50)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.background)
                    .cornerRadius(10)
            }
                
                
            
            
        }
        
    }
        
}
    

#Preview {
    Survey12()
}
