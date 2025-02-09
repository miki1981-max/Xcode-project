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
        NavigationView {
            VStack(spacing: 10) {
                Text("Diary")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 50)

                VStack {
                    Text("Your Blood Sugar level is")
                        .font(.headline)
                        .multilineTextAlignment(.center)

                    Text(bloodSugarLevel)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.vertical, 2)

                    Text("mmol/L")
                        .font(.subheadline)
                }
                .padding(.vertical, 10)

                HStack {
                    Text(currentTime)
                        .font(.headline)
                        .padding()
                        .frame(width: 120, height: 40)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)

                    Button("TODAY") {
                        updateCurrentTime()
                    }
                    .foregroundColor(.white)
                    .frame(width: 120, height: 40)
                    .background(Color.blue)
                    .cornerRadius(8)
                }
                .padding(.vertical, 10)

                Text("When was this sugar level measured?")
                    .font(.headline) // Increased font size
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 5)

                mealTimingOptions()

                TextField("Enter notice", text: $notice)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button("Save") {
                    saveInformation()
                    showConfirmation = true
                }
                .alert(isPresented: $showConfirmation) {
                    Alert(title: Text("Saved"), message: Text("Your information has been saved."), dismissButton: .default(Text("OK")))
                }
                .foregroundColor(.white)
                .frame(width: 150, height: 44)
                .background(Color.blue)
                .cornerRadius(8)
                .padding(.top, 20)

                NavigationLink(destination: Frame23View()) {
                    Text("Next")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 44)
                        .background(Color.green)
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .ignoresSafeArea()
            .onAppear {
                updateCurrentTime()
            }
        }
    }

    private func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        currentTime = dateFormatter.string(from: Date())
    }

    private func saveInformation() {
        UserDefaults.standard.set(bloodSugarLevel, forKey: "savedBloodSugarLevel")
        UserDefaults.standard.set(notice, forKey: "savedNotice")
    }

    private func mealTimingOptions() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(["Before a meal", "After a meal", "Fasting blood sugar", "Bedtime blood sugar"], id: \.self) { timing in
                Button(action: {
                    self.selectedMealTiming = timing
                }) {
                    HStack {
                        Image(systemName: selectedMealTiming == timing ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(selectedMealTiming == timing ? .blue : .gray)
                        Text(timing)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.15))
                    .cornerRadius(8)
                }
            }
        }
    }
}

struct Frame22View_Previews: PreviewProvider {
    static var previews: some View {
        BloodSugarView2(bloodSugarLevel: .constant("4.5"))
    }
}
