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
    @State private var sugarlevel: Float = 30
    
    var body: some View {
        // Time Section
        HStack(spacing: 133) {
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
            .onAppear {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "HH:mm"
                currentTime = dateFormatter.string(from: Date())
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.white]), startPoint: .top, endPoint: .bottom))
        //.offset(y: -160)
        .frame(maxWidth: .infinity, maxHeight: 5)
        
        HStack {
            VStack {
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Name: \(patient)")
                        .font(.title2)
                }
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Gender: \(gender)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Age: \(age)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Weight: \(weight)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Pressure: \(pressure)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Oxygen: \(oxygen)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Pulse: \(pulse)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Body temperature: \(temperature)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
                
                NavigationLink(destination: Fillinginformation1()) {
                    Text("Sugar level: \(sugarlevel)")
                        .font(.title2)
                }
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .fontWeight(.medium)
                .cornerRadius(15)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
            
        }
    }
}

#Preview {
    Frame23View()
}
