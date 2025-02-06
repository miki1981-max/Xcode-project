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
       
    let names = [
           "Male",
           "Female",
           
    
       ]

    var body: some View {
        VStack{
            
           
            VStack{
                
                Text("1.What is your care receiver's name?")
                    .padding()
                
                TextField("", text:$name, prompt: Text("Enter your name")
                    .foregroundColor(Color.gray))
                .padding(.horizontal,30)
                .padding(.top,10)
                
                
                Text("2.Choose the gender")
                    .padding(.top,150)
                    .padding(.leading,-130)
                    
                
                .navigationBarTitle("Survey",
                                    displayMode:.inline)
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
            
            
                
                
                    
                        
                        
                        
                        
            
                NavigationStack {
                    
                    List(names, id: \.self, selection: $selection) { name in
                        Text(name)
                        
                    }
                    
                    
                    
                    
                    .toolbar {
                        EditButton()
                    }
                    
                }
                
            
                
            NavigationLink(destination: Survey2()) {
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
