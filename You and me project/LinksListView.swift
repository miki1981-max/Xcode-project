//
//  LinksListView.swift
//  You and me project
//
//  Created by Kaukab Farrukh on 2025-02-05.
//

import SwiftUI

struct LinksListView: View {
    var category: String // The category name (e.g., Comfort and Safety)
    var links: [String] // List of links to display

    var body: some View {
        VStack(spacing: 30) {
            // Title
            Text(category)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top, 120)

            // Description
            Text("Here are some helpful articles:")
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)

            // List of Links
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(links, id: \.self) { link in
                        Button(action: {
                            openURL(link)
                        }) {
                            HStack {
                                Text(link)
                                    .foregroundColor(.blue)
                                    .underline()
                                    .lineLimit(1)
                                    .truncationMode(.middle)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                Image(systemName: "arrow.up.right.circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background")) // Background color from assets
        .ignoresSafeArea()
    }

    // Open the URL in the device's browser
    private func openURL(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

struct LinksListView_Previews: PreviewProvider {
    static var previews: some View {
        LinksListView(
            category: "Comfort and Safety",
            links: [
                "https://www.agingcare.com/articles/tips-for-keeping-seniors-safe-at-home-140217.htm",
                "https://www.healthline.com/health/safe-living-for-elderly"
            ]
        )
    }
}

