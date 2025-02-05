//
//  Frame23View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct Frame23View: View {
    @State private var currentTime: String = ""
    @State private var patient: String = ""
    @State private var gender: String = ""
    @State private var age: Int = 66
    @State private var weight: Float = 65.0
    @State private var pressure: Float = 80
    @State private var oxygen: Int = 50
    @State private var pulse: Int = 80
    @State private var temperature: Float = 37
    @State private var sugarLevel: Float = 30

    var body: some View {
        VStack{
            HStack {
                Text(currentTime)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 100, maxHeight: 40)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                
                Spacer()

                Button("TODAY") {
                    // "Today" button action
                    updateCurrentTime()
                }
                .frame(maxWidth: 100, maxHeight: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding(.top, 20)
                       .padding(.horizontal, 20)
                       
                       Spacer().frame(height: 30)
                       .onAppear {
                           updateCurrentTime()
                       }
            

            VStack(spacing: 10) {
                Group {
                    entryField(label: "Name", value: $patient)
                    entryField(label: "Gender", value: $gender)
                    entryField(label: "Age", value: $age)
                    entryField(label: "Weight", value: $weight)
                    entryField(label: "Pressure", value: $pressure)
                }
                Group {
                    entryField(label: "Oxygen", value: $oxygen)
                    entryField(label: "Pulse", value: $pulse)
                    entryField(label: "Body temperature", value: $temperature)
                    entryField(label: "Sugar level", value: $sugarLevel)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background")) // Adjust this to use the correct color
        .ignoresSafeArea()
    }

    private func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        currentTime = dateFormatter.string(from: Date())
    }

    @ViewBuilder
    private func entryField<T>(label: String, value: Binding<T>) -> some View {
        HStack {
            Text(label + ":")
                .font(.headline)
            Spacer()
            Text("\(value.wrappedValue)")
                .font(.subheadline)
        }
        .padding()
        .frame(height: 40)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct Frame23View_Previews: PreviewProvider {
    static var previews: some View {
        Frame23View()
    }
}

