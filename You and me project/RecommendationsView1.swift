//
//  RecommendationsView1.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-10.
//  This is frame 9 (in Figma); frames 10 and 11 have separate Swift pages.

import SwiftUI

struct RecommendationsView1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Recommendations for a person who uses a cane or walkers. The steps described below can be done either by a sick person independently or with the help of an assistant.")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .navigationBarTitle("")
                    VStack {
                        NavigationLink(destination: Fillinginformation1()) {
                            Text("List of symptoms")
                                .font(.largeTitle)
                                .frame(width: 300, height: 50)
                                .background(Color.white)
                        }
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        Text("Write the care receiver's symptoms into a diary...")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Frame24View()) {
                            Text("Comfort & safety")
                                .padding()
                                .font(.largeTitle)
                        }
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
                        Text("Check whether the care receiver's in comfortable condition and feels safe. Make sure you follow all steps.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: Frame24View()) {
                            Text("Hygiene")
                                .font(.largeTitle)
                        }
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.white)
                        .fontWeight(.medium)
                        .cornerRadius(15)
                        
                        Text("Hygiene plays an extremely important role in the life of a person with diabetes. Make sure you follow all steps.")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        NavigationLink(destination: RecommendationsView2()) {
                            Text("Next page")
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
    RecommendationsView1()
}
