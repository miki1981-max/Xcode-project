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
                ZStack {
                    // Background color from assets
                    Color("Background").ignoresSafeArea()
                    
                    VStack(spacing: 30) {
                        // Animated Icon
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0.2))
                                .frame(width: 140, height: 140)
                                .shadow(color: .blue.opacity(0.5), radius: 20)
                            Image(systemName: "heart.text.square.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.blue)
                                .shadow(color: .white, radius: 10)
                                .scaleEffect(1.1)
                                .animation(
                                    Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true),
                                    value: true
                                )
                        }
                        .padding(.top, 40)
                        
                        // Title
                        Text("You and Me")
                            .font(.largeTitle)
                            .italic()
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)
                            .padding(.bottom, 10)
                        
                        // Subtitle
                        Text("Elderly Care Service")
                            .font(.headline)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(color: .blue.opacity(0.4), radius: 8, x: 0, y: 5)
                            .padding(.bottom, 80)
                        
                        // Start Button
                        NavigationLink(destination: WelcomePage()) {
                            Text("Start")
                                .font(.headline)
                                .foregroundColor(Color.blue)
                                .frame(width: 120, height: 50)
                                .background(Color.white)
                                .cornerRadius(25)
                                .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                        }
                        .padding(.top, 20)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    StartPageView()
}
