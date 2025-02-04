//
//  Frame21View .swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct Frame21View: View {
    @State private var temperature = ""

    var body: some View {
        ZStack {
            backgroundView
            contentStack
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
            TextField("Enter temperature", text: $temperature)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 150)
            Text("mmol/L").font(.headline)
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
            // Action for next button
        }
        .foregroundColor(.white)
        .frame(maxWidth: 150, maxHeight: 44)
        .background(Color.blue)
        .cornerRadius(8)
        .padding(.top, 20)
    }
    
    private func handleKeyPress(_ key: String) {
        switch key {
        case "⌫": temperature = String(temperature.dropLast())
        case "C": temperature = ""
        default: if temperature.count < 5 && key != "⌫" && key != "C" { temperature.append(key) }
        }
    }
}

struct Frame21Button: View {
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
        Frame21View()
    }
}

