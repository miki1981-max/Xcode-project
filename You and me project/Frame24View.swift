//
//  Frame24View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-02-04.
//

import SwiftUI

struct Frame24View: View {
    var body: some View {
        VStack {
            Text("Library")
                .font(.title)
                .bold()
                .padding(.top, 100)

            Text("Here you can find links to helpful articles on caring for elderly or sick persons.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.top, 50)  

            // Buttons for different categories
            Spacer(minLength: 50)

            Button("Comfort and Safety") {
                // Navigation action or function here
            }
            .buttonStyle(Frame24ButtonStyle())

            Button("Hygiene") {
                // Navigation action or function here
            }
            .buttonStyle(Frame24ButtonStyle())

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .ignoresSafeArea()
    }
}

// Custom button style for uniform appearance
struct Frame24ButtonStyle: ButtonStyle {
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

struct Frame24View_Previews: PreviewProvider {
    static var previews: some View {
        Frame24View()
    }
}
