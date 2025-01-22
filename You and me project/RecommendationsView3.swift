//
//  RecommendationsView3.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-10.
//  This is frame 11 (in Figma); frames 9 and 10 have separate Swift pages.

import SwiftUI

struct RecommendationsView3: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Recommendations for a person who uses a cane or walkers. The steps described below can be done either by a sick person independently or with the help of an assistant.")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .navigationBarTitle(Text("Page 3"), displayMode:.inline)
                    VStack {
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Nutrition")
                                .font(.largeTitle)
                        }
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
                        Text("A properly balanced diet is one of the main conditions for keeping up health.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Benefits of walking")
                                .font(.largeTitle)
                        }
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
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

#Preview {
    RecommendationsView3()
}
