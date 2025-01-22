//
//  RecommendationsView2.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-10.
//  This is frame 10 (in Figma); frames 9 and 11 have separate Swift pages.

import SwiftUI

struct RecommendationsView2: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Recommendations for a person who uses a cane or walkers. The steps described below can be done either by a sick person independently or with the help of an assistant.")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .navigationBarTitle(Text("Page 2"), displayMode:.inline)
                    VStack {
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Intimate hygiene")
                                .font(.largeTitle)
                        }
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
                        Text("Intimate hygiene plays an extremely important role in the life of a person with diabetes. Make sure you follow all steps.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                        
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("Taking medication")
                                .font(.largeTitle)
                        }
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
                        Text("It's important that the care receiver takes all medications recommended by the doctor strictly at the time they were prescribed.")
                            .padding()
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: RecommendationsView3()) {
                            Text("Next page")
                                .foregroundColor(Color.blue)
                                .frame(width: 100, height: 50)
                                .background(Color.white)
                                .fontWeight(.medium)
                        }
                        .padding()
                        .frame(width: 115, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                    }
                    .frame(maxWidth: 800, maxHeight: 900)
                    .background(Color.background)
                }
            }
            .background(Color.background)
        }
    }

#Preview {
    RecommendationsView2()
}
