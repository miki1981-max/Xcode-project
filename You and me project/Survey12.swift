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
           "Mail",
           "Femail",
           
    
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
                    .navigationBarTitle("Survey",
                        displayMode:.inline)
                
                
                NavigationStack {
                    
                    List(names, id: \.self, selection: $selection) { name in
                        Text(name)
                        
                    }
                    
                    
                                        .navigationTitle("2.Choose the gender")
                                                            
                    .toolbar {
                        EditButton()
                    }
                    
                }
                
            }
            
        }
        
    }
        
}
    

#Preview {
    Survey12()
}
