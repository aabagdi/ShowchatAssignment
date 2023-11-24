//
//  CarouselView.swift
//  ShowchatAssignment
//
//  Created by Aadit Bagdi on 11/24/23.
//

import Foundation
import SwiftUI

/*
 Simple carousel view. All I did was use a horizontal ScrollView and use a LazyHStack to hold the images. I used a LazyHStack in case there are a lot of images, in which case a normal HStack would be quite slow since it loads all the images at once. A LazyHStack only renders the content within when it scrolls into the view. This view takes an array of image names as its single parameter. The circles at the bottom representing the users are just iterated over each other using ForEach while being in a HStack. The different colors are clipped into a circle to represent the profile images of the users.
 */

struct CarouselView : View {
    let colors: [Color] = [.red, .blue, .purple, .green] // list of colors for faux profile pics
    var imageNames : [String] // list of images to display in the carousel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) { // add some spacing between the posters
                ForEach(imageNames, id: \.self) {show in
                    VStack {
                        Image(show) // for each image name given, display corresponding poster
                            .resizable() // makes sure the poster can be resized to fit the frame
                            .scaledToFill() // makes sure the image is scaled to fit the fram
                            .frame(width: 204, height: 320)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0)) // round the edges of the poster
                        HStack {
                            HStack(spacing: -15) {
                                ForEach(0..<colors.count,  id: \.self) { i in
                                    colors[i]
                                        .clipShape(Circle()) // for each color in the color list, make a circle out of that color
                                        .frame(width: 44, height: 44)
                                }
                            }
                            .offset(x: 37, y: -30)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    CarouselView(imageNames: ["all-the-light-we-cannot-see", "beef", "indian_matchmaking", "love-is-blind", "love-island-2019", "queer-eye", "selling-sunset", "suits", "the-circle", "the-great-british-bake-off"])
}
