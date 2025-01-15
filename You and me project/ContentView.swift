//
//  ContentView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-01.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image(systemName: "heart")//iconApp
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("You and Me")
                    .font(.largeTitle)
                    .italic()
                    .foregroundColor(.blue)
                    
                // The title
                Text("Eldrly Care Service")
                    .background(Color.blue)
                    .foregroundColor(.white) .multilineTextAlignment(.center) .padding()
                
                NavigationLink(destination: WelcomePage()) {
                    Text("Start")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)

            
        }
        
    }
    
}

#Preview {
    ContentView() // interface
}
