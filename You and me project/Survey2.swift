//
//  Survey2.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-27.
//

import SwiftUI

struct Survey2: View {
    @State private var care_reciever = ""
    var body: some View {
        
        VStack {
            
            
            Text("3. What is the care receiver's date of birth?")
                .padding(.top, 200)
                

            TextField("", text:$care_reciever, prompt: Text("Enter your name")
                .foregroundColor(Color.gray))
            
                .padding(.horizontal,30)
                
                .navigationBarTitle("Survey",
                displayMode:.inline)
            
            NavigationLink(destination: Survey3()) {
                Text("Next")
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
    Survey2()
}
