//
//  StartPageView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2025-01-27.
//

import SwiftUI

struct StartPageView: View {
    
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
                Text("Elderly Care Service")
                    .background(Color.blue)
                    .foregroundColor(.white) .multilineTextAlignment(.center) .padding()
                
                NavigationLink(destination: WelcomePage()) {
                    Text("Start")
                        .foregroundColor(Color.blue)
                        .frame(width: 100.0, height:50)
                        .background(Color.white)
                        .cornerRadius(15)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)

            
        }
    }
    
}

#Preview {
    StartPageView()
}
