//
//  Frame26View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-02-05.
//

import SwiftUI

struct Frame26View: View {
    var body: some View {
        VStack {
            Text("Library")
                .font(.title)
                .bold()
                .padding(.top, 140)  // Increased padding for better alignment at the top

            Text("Here you can find links to helpful articles on caring for elderly or sick persons.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.top, 60)  // Added some top padding for spacing

            // Buttons for different categories
            Spacer(minLength: 50)  // Adds spacing before the buttons

            Button("Nutrition") {
                // Navigation action or function here
            }
            .buttonStyle(Frame26ButtonStyle())

            Button("Benefits of Walking") {
                // Navigation action or function here
            }
            .buttonStyle(Frame26ButtonStyle())

            Spacer()  // Pushes everything up
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))  // Ensure this matches your asset name
        .ignoresSafeArea()
    }
}

// Custom button style for uniform appearance
struct Frame26ButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

struct Frame26View_Previews: PreviewProvider {
    static var previews: some View {
        Frame26View()
    }
}
