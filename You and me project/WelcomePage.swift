//
//  Welcome page.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-03.
//

import SwiftUI

struct WelcomePage: View {
    let items = [
        "To create a care plan",
        "To keep notes in a diary",
        "To use the library"
    ]
    
    var body: some View {
           
               ZStack {
                   // Background color from assets
                   Color("Background").ignoresSafeArea()
                   
                   VStack(spacing: 40) {
                       // Animated Icon
                       ZStack {
                           Circle()
                               .fill(Color.white.opacity(0.2))
                               .frame(width: 140, height: 140)
                           Image(systemName: "heart.text.square.fill")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .foregroundColor(.blue)
                               .shadow(radius: 10)
                               .scaleEffect(1.1)
                               .animation(
                                   Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true),
                                   value: true
                               )
                       }
                       .padding(.top, 40)
                       
                       // Welcome Text
                       Text("This App helps you")
                           .font(.largeTitle)
                           .italic()
                           .foregroundColor(.blue)
                           .multilineTextAlignment(.center)
                           .padding(.horizontal, 20)
                           
                           .navigationBarTitle("Welcome",
                                               displayMode:.inline)
                       
                       // Feature List without hard rectangle
                       VStack(alignment: .leading, spacing: 10) {
                           ForEach(items, id: \.self) { item in
                               HStack {
                                   Image(systemName: "checkmark.seal.fill")
                                       .foregroundColor(.green)
                                   Text(item)
                                       .font(.headline)
                                       .foregroundColor(.white)
                               }
                           }
                       }
                       .padding(.horizontal, 30)
                       .padding(.vertical, 10)
                       .background(Color.white.opacity(0)) // No hard rectangle
                       .cornerRadius(15)
                       
                       // Login Button
                       NavigationLink(destination: LoginView()) {
                           Text("Log in")
                               .font(.headline)
                               .foregroundColor(.white)
                               .frame(maxWidth: 200, maxHeight: 50)
                               .background(
                                   LinearGradient(
                                       gradient: Gradient(colors: [Color.blue, Color.purple]),
                                       startPoint: .top,
                                       endPoint: .bottom
                                   )
                               )
                               .cornerRadius(15)
                               .shadow(radius: 5)
                       }
                       
                       // Registration Button
                       NavigationLink(destination: RegistrationView()) {
                           Text("Registration")
                               .font(.headline)
                               .foregroundColor(.white)
                               .frame(maxWidth: 200, maxHeight: 50)
                               .background(
                                   LinearGradient(
                                       gradient: Gradient(colors: [Color.green, Color.teal]),
                                       startPoint: .top,
                                       endPoint: .bottom
                                   )
                                                               )
                                                               .cornerRadius(15)
                                                               .shadow(radius: 5)
                                                       }
                                                       
                                                       Spacer()
                                                   }
                                                   .padding(.horizontal, 20)
                                               }
                                           }
                                       }
                                   

                                   #Preview {
                                       WelcomePage()
                                   }
