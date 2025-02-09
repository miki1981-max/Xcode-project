//
//  Frame21View .swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct BloodSugarView1: View {
    @State private var sugarLevel = "" // Store sugar level as a string
    @State private var navigateToNextScreen = false // State to control navigation

    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                contentStack
            }
            .navigationBarHidden(true) // Optionally hide the navigation bar
        }
    }
    
    private var backgroundView: some View {
        Color("Background").ignoresSafeArea()
    }

    private var contentStack: some View {
        VStack {
            titleSection
            inputSection
            keypadSection
            nextButton
        }
    }

    private var titleSection: some View {
        VStack {
            Text("Diary").font(.largeTitle).bold()
            Text("Blood Sugar Level").font(.headline)
            Text("Please enter your or the care receiver's blood sugar level")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
        }.padding(.top, 20)
    }
    
    private var inputSection: some View {
        VStack {
            TextField("Enter sugar level", text: $sugarLevel)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 150)
            Text("mg/dL").font(.headline) // Changed from "°C" to "mg/dL" for blood sugar
        }.padding(.top, 20)
    }
    
    private var keypadSection: some View {
        VStack(spacing: 10) {
            keypadRow(keys: ["1", "2", "3"])
            keypadRow(keys: ["4", "5", "6"])
            keypadRow(keys: ["7", "8", "9"])
            keypadRow(keys: ["C", "0", "⌫"])
        }
    }

    private func keypadRow(keys: [String]) -> some View {
        HStack(spacing: 10) {
            ForEach(keys, id: \.self) { key in
                KeyButton(key: key, action: {
                    handleKeyPress(key)
                })
            }
        }
    }
    
    private var nextButton: some View {
        Button("Next") {
            navigateToNextScreen = true // Trigger navigation
        }
        .foregroundColor(.white)
        .frame(maxWidth: 150, maxHeight: 44)
        .background(Color.blue)
        .cornerRadius(8)
        .padding(.top, 20)
        .background(
            NavigationLink(destination: BloodSugarView2(bloodSugarLevel: sugarLevel), isActive: $navigateToNextScreen) {
                EmptyView() // Invisible navigation link activated by the button
            }
        )
    }
    
    private func handleKeyPress(_ key: String) {
        switch key {
        case "⌫": sugarLevel = String(sugarLevel.dropLast())
        case "C": sugarLevel = ""
        default: if sugarLevel.count < 5 && key != "⌫" && key != "C" { sugarLevel.append(key) }
        }
    }
}

struct Frame21KeyButton: View {
    var key: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(key)
                .font(.title)
                .frame(width: 60, height: 60)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
        }
    }
}

struct Frame21View_Previews: PreviewProvider {
    static var previews: some View {
        BloodSugarView1()
    }
}
