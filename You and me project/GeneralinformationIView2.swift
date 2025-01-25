//
//  GeneralinformationIView2.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-10.
//

import SwiftUI

struct GeneralinformationIView2: View {
    var body: some View {
        VStack {
            Text("This App is about")
                .font(.title)
                .fontWeight(.bold)

            Text("You and Me")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
            .font(.largeTitle)
            .italic()
            .foregroundColor(.blue)
       
            Text("This App is an efficient assistant in caring  for elderly or sick person. After the registration step, you need to complete a survey that consists of 5 questions. Your answers will help the App to make an appropriate care plan you can use in the future. Besides, the App includes such features as a calendar, reminder, symptom diary, and a library. All recommendations and articles are written by experts.")
                .font(.body)
                .navigationBarTitle("General information",
                    displayMode:.inline)
            
            
            NavigationLink(destination: Survey12()) {
                Text("Next")
                    .frame(width: 100.0, height:50)
                    .foregroundStyle(Color.blue)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                        
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)

        }
    }
}

#Preview {
    GeneralinformationIView2()
}
