//
//  Frame20View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct BodyWeightView2: View {
    var bodyweight: String // Get from Fillinginformation2
    @State private var currentTime: String = "" // To hold real-time
    @State private var notice: String = "" // Notice input

    var body: some View {
        VStack {
            // Title
            Text("Diary")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)
                .offset(y: -200)

            // Subtitle
            Text("Body weight is...")
                .font(.headline)
                .offset(y: -200)

            // Weight Display
            Text(bodyweight)
                .font(.largeTitle)
                .bold()
                .offset(y: -180)

            Text("°C")
                .font(.headline)
                .offset(y: -180)

            // Time Section
            HStack(spacing: 20) {
                Text(currentTime)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 100, maxHeight: 40)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                Button(action: {
                    // "Today" button action (optional, placeholder)
                }) {
                    Text("TODAY")
                        .frame(maxWidth: 100, maxHeight: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .offset(y: -150)

            // Notice Section
            VStack(spacing: 10) {
                Text("Notice")
                    .font(.headline)
                    .padding(.top, 10)

                HStack {
                    TextField("Enter notice", text: $notice)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 250)

                    Button(action: {
                        // Action for the pencil icon
                    }) {
                        Image(systemName: "pencil")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                }
            }
            .offset(y: -100)

            // Save & Next Button
            NavigationLink(
                destination: BodyWeightView1(),
                label: {
                    Button(action: {
                        saveInformation()
                    }) {
                        Text("Save & Next")
                            .foregroundColor(.white)
                            .frame(maxWidth: 150, maxHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
            )
            .offset(y: -80)

            Spacer()

            // Bottom Navigation Icons
            HStack {
                Button(action: {
                    // Action for the first icon
                }) {
                    Image(systemName: "person.fill")
                        .font(.title)
                }
                Spacer()
                Button(action: {
                    // Action for the second icon
                }) {
                    Image(systemName: "pencil")
                        .font(.title)
                }
                Spacer()
                Button(action: {
                    // Action for the third icon
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
        .onAppear {
            updateCurrentTime() // Update time on screen load
        }
    }

    // Function to get and update current time
    private func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        currentTime = dateFormatter.string(from: Date())
    }

    // Function to save information
    private func saveInformation() {
        let savedData: [String: Any] = [
            "bodyWeight": bodyweight,
            "notice": notice,
            "time": currentTime
        ]
        
        // Save the dictionary to UserDefaults
        UserDefaults.standard.set(savedData, forKey: "BodyWeightData")

        print("Data saved successfully!")
    }

}

#Preview {
    BodyWeightView2(bodyweight: "60") // Pass example value for preview
}
