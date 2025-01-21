//
//  Frame21View .swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct Frame21View: View {
    @State private var bloodSugarLevel = "" // User input for blood sugar level

    var body: some View {
        VStack {
            // Title
            Text("Diary")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)
                .offset(y: -200)

            // Subtitle
            Text("Blood sugar level")
                .font(.headline)
                .offset(y: -200)

            // Instructions
            Text("Please enter your or care receiver's blood sugar level")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .offset(y: -180)

            // Input Section
            VStack(spacing: 10) {
                Text("SUGAR LEVEL")
                    .font(.headline)

                TextField("Enter blood sugar level", text: $bloodSugarLevel)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad) // Use numeric keyboard
                    .frame(width: 200)

                Text("mmol/L")
                    .font(.headline)
            }
            .offset(y: -150)

            // Custom Keypad Section
            VStack(spacing: 10) {
                ForEach(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "Delete"], id: \.self) { key in
                    Button(action: {
                        handleKeyPress(key)
                    }) {
                        Text(key)
                            .font(.title)
                            .frame(width: 60, height: 60)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                            .padding(5)
                    }
                }
            }
            .offset(y: -100)

            // Next Button
            NavigationLink(destination: Frame22View()) { // Replace with the next screen's view
                Text("Next")
                    .foregroundColor(.white)
                    .frame(maxWidth: 150, maxHeight: 44)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.top, 20)

            Spacer()

            // Bottom Navigation Icons
            HStack {
                Button(action: {
                    // Handle action for first icon
                }) {
                    Image(systemName: "person.fill")
                        .font(.title)
                }
                Spacer()
                Button(action: {
                    // Handle action for second icon
                }) {
                    Image(systemName: "pencil")
                        .font(.title)
                }
                Spacer()
                Button(action: {
                    // Handle action for third icon
                }) {
                    Image(systemName: "book.fill")
                        .font(.title)
                }
            }
            .padding(.horizontal, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.white]), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
    }

    // Keypad Button Logic
    private func handleKeyPress(_ key: String) {
        if key == "Delete" {
            if !bloodSugarLevel.isEmpty {
                bloodSugarLevel.removeLast()
            }
        } else {
            bloodSugarLevel += key
        }
    }
}

#Preview {
    Frame21View()
}

