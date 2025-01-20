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
                    .font(.title2)
                    .fontWeight(.heavy)
                ScrollView {
                    VStack {
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Morning")
                                .font(.largeTitle)
                        }
                        Text("Write the care receiver's symptoms into a diary...")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Comfort and safety ")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Text("Check whether the care receiver's in comfortable condition and feels safe. Make sure you follow all steps.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Hygiene")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Text("Hygiene plays an extremely important role in the life of a person with diabetes. Make sure you follow all steps.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Intimate hygiene")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Text("It's important that the care receiver takes all medications recommended by the doctor strictly at the time they were prescribed.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Nutrition")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Text("A properly balanced diet is one of the main components of therapy for diabetes.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Benefits of walking")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Text("It's important that the care receiver takes all medications recommended by the doctor strictly at the time they were prescribed.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    .frame(maxWidth: 800, maxHeight: 900)
                    .background(Color.background)
                }
            }
            .background(Color.background)
        }
    }
}

#Preview {
    RecommendationsView()
}
