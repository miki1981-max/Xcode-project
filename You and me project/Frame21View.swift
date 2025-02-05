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
            Color("Background").ignoresSafeArea()
            VStack {
                TitleSection()
                InputSection(temperature: $temperature)
                KeypadSection(handleKeyPress: handleKeyPress)
                NextButton()
            }
        }
    }

    private func handleKeyPress(_ key: String) {
        switch key {
        case "⌫":
            temperature = String(temperature.dropLast())
        case "C":
            temperature = ""
        default:
            if temperature.count < 5 {
                temperature.append(key)
            }
        }
    }
}

struct TitleSection: View {
    var body: some View {
        VStack {
            Text("Diary").font(.largeTitle).bold()
            Text("Body Temperature").font(.headline)
            Text("Please enter your or the care receiver's body temperature")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
        }
        .padding(.top, 20)
    }
}

struct InputSection: View {
    @Binding var temperature: String

    var body: some View {
        VStack {
            TextField("Enter temperature", text: $temperature)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 150)
            Text("°C").font(.headline)
        }
        .padding(.top, 20)
    }
}

struct KeypadSection: View {
    let handleKeyPress: (String) -> Void

    var body: some View {
        VStack(spacing: 10) {
            KeypadRow(keys: ["1", "2", "3"], handleKeyPress: handleKeyPress)
            KeypadRow(keys: ["4", "5", "6"], handleKeyPress: handleKeyPress)
            KeypadRow(keys: ["7", "8", "9"], handleKeyPress: handleKeyPress)
            KeypadRow(keys: ["C", "0", "⌫"], handleKeyPress: handleKeyPress)
        }
    }
}

struct KeypadRow: View {
    let keys: [String]
    let handleKeyPress: (String) -> Void

    var body: some View {
        HStack(spacing: 10) {
            ForEach(keys, id: \.self) { key in
                KeyButton(key: key, action: { handleKeyPress(key) })
            }
        }
    }
}

struct Frame21KeyButton: View {
    let key: String
    let action: () -> Void

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

struct NextButton: View {
    var body: some View {
        Button("Next") {
            // Next button action
        }
        .foregroundColor(.white)
        .frame(maxWidth: 150, maxHeight: 44)
        .background(Color.blue)
        .cornerRadius(8)
        .padding(.top, 20)
    }
}

#Preview {
    Frame21View()
}

