//
//  Frame20View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct OxygenPulseView2: View {
    var oxygen: String
    var value2: String
    var pulse: String   // Pass these from previous frame
    @State private var currentTime: String = "" // To hold real-time
    @State private var notice: String = "" // Notice input

    var body: some View {
        VStack(spacing: 20) {
            Text("Diary")
                .font(.largeTitle)
                .bold()
                .padding(.top, 50)

            Text("Oxygen and pulse is...")
                .font(.title3)
                .padding(.bottom, 10)

            Text(oxygen + "/" + value2 + "/" + pulse)
                .font(.largeTitle)
                .bold()

            HStack(spacing: 10) {
                Text(currentTime)
                    .font(.headline)
                    .padding()
                    .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: 40)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                Button("TODAY") {
                    // "Today" button action
                }
                .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding(.vertical, 10)

            TextField("Enter notice", text: $notice)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)

            Button("Save") {
                // Save button action
            }
            .frame(maxWidth: 150, maxHeight: 44)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background")) // Make sure your asset color is called "Background"
        .ignoresSafeArea()
        .onAppear {
            updateCurrentTime() // Update time on screen load
        }
    }

    private func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        currentTime = dateFormatter.string(from: Date())
    }
}

struct OxygenPulseView2_Previews: PreviewProvider {
    static var previews: some View {
        OxygenPulseView2(oxygen: "95", value2: "78", pulse: "80") // Pass example value for preview
    }
}
