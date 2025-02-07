//
//  Frame22View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct BloodSugarView2: View {
    var bloodSugarLevel: String = "4.5" // Example level, update as needed
    @State private var currentTime: String = "" // To hold real-time
    @State private var selectedMealTiming: String = "Before a meal" // Default timing
    @State private var notice: String = "" // Notice input

    var body: some View {
        VStack(spacing: 20) {
            Text("Diary")
                .font(.largeTitle)
                .bold()

            Text("Blood sugar level is...")
                .font(.title3)

            Text(bloodSugarLevel + " mmol/L")
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

            Text("When was this sugar level measured?")
                .font(.subheadline)
                .multilineTextAlignment(.center)

            VStack(alignment: .leading, spacing: 10) {
                ForEach(["Before a meal", "After a meal", "Fasting blood sugar", "Bedtime blood sugar"], id: \.self) { timing in
                    Button(action: {
                        selectedMealTiming = timing
                    }) {
                        HStack {
                            Image(systemName: selectedMealTiming == timing ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(selectedMealTiming == timing ? .blue : .gray)
                            Text(timing)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }

            TextField("Enter notice", text: $notice)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)

            Button("Save & Next") {
                saveInformation()
            }
            .frame(maxWidth: 150, maxHeight: 44)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background")) // Ensure Color set as in Frame 20
        .ignoresSafeArea()
        .onAppear {
            updateCurrentTime()
        }
    }

    private func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        currentTime = dateFormatter.string(from: Date())
    }

    private func saveInformation() {
        let savedData: [String: Any] = [
            "bloodSugarLevel": bloodSugarLevel,
            "mealTiming": selectedMealTiming,
            "notice": notice,
            "time": currentTime
        ]
        UserDefaults.standard.set(savedData, forKey: "Frame22Data")
        print("Data saved successfully!")
    }
}

struct Frame22View_Previews: PreviewProvider {
    static var previews: some View {
        BloodSugarView2()
    }
}

