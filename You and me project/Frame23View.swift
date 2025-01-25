//
//  Frame23View.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-01-21.
//

import SwiftUI

struct Frame23View: View {
    @State private var currentTime: String = ""
    
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
        .offset(y: -150)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Frame23View()
}
