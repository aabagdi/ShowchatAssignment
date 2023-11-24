//
//  MainView.swift
//  ShowchatAssignment
//
//  Created by Aadit Bagdi on 11/23/23.
//

import SwiftUI

/*
 The Showchat view. I split the different parts of the view into subviews to make everything more managable. The views are all organized into a VStack so that they are stacked on top of each other.
 */

struct ShowchatView: View {
    var body: some View {
        VStack {
            SearchBarView() // Search Bar
            TextBubbleView() // Speech Bubble Tooltip
            Text("POPULAR SHOWCHATS")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding()
            CarouselView(imageNames: ["all-the-light-we-cannot-see", "beef", "indian_matchmaking", "love-is-blind", "love-island-2019", "queer-eye", "selling-sunset", "suits", "the-circle", "the-great-british-bake-off"]) // Carousel of posters with image names given
                .padding()
        }
        .preferredColorScheme(.dark) // forcing dark mode to make background black
    }
}

#Preview {
    ShowchatView()
}
