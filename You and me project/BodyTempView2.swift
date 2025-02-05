//
//  Frame20View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct Frame20View: View {
    var bodyTemperature: String = "36.6" // Example temperature, update as needed
    @State private var currentTime: String = "" // To hold real-time
    @State private var measurementPlace: String = "Armpit" // Default place
    @State private var notice: String = "" // Notice input

    var body: some View {
        VStack(spacing: 20) {
            Text("Diary")
                .font(.largeTitle)
                .bold()
                .padding(.top, 50)

            Text("Body temperature is...")
                .font(.title3)
                .padding(.bottom, 10)

            Text(bodyTemperature + " °C")
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

            Text("The place of body temperature measurement")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)

            HStack(spacing: 10) {
                ForEach(["Armpit", "Rectum", "Oral", "Ear Drum"], id: \.self) { place in
                    Button(action: {
                        measurementPlace = place
                    }) {
                        Text(place)
                            .frame(maxWidth: 100, maxHeight: 40)
                            .background(measurementPlace == place ? Color.blue : Color.gray.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }

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

struct Frame20View_Previews: PreviewProvider {
    static var previews: some View {
        Frame20View()
    }
}

