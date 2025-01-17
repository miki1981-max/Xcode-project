//
//  RecommendationsView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-10.
//

import SwiftUI

struct RecommendationsView: View {
    var body: some View {
        NavigationView {
        VStack {
            Text("Recommendations for a person who uses a cane or walkers. The steps described below can be done either by a sick person independently or with the help of an assistant.")
            NavigationLink(destination: Fillinginformation1()) {
                Text("Morning")
            
                .font(.body)
                .padding()
            
                    
            }
        
            .frame(maxWidth: 800, maxHeight: 550)
            .background(Color.background)
            
            VStack {
                Text("Write the care receiver’s symptoms into a diary")
                    
                }
            }
            .frame(maxWidth: 800, maxHeight: 800)
            .background(Color.white)
        }
        
        }
        }
    
    

#Preview {
    RecommendationsView()
}
