//
//  TextBubbleView.swift
//  ShowchatAssignment
//
//  Created by Aadit Bagdi on 11/24/23.
//

import Foundation
import SwiftUI

/*
 The speech bubble message. All I did here was create a Text Box, made the background a rounded rectangle then added an inverted triangle to the top to create a speech bubble shape. The fill is an orange gradient and the triangle is the color of the portion of the gradient it's in.
 */


struct TextBubbleView : View {
    var body: some View {
        Text("Welcome! \n \nStart watching any show (turn up the volume please), search for what you're watching here, and have fun!")
            .foregroundStyle(.black)
            .padding()
            .background(Color.orange.gradient)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            .background {
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.title)
                    .offset(x: 0, y: 75)
                    .rotationEffect(.degrees(180))
                    .foregroundColor(Color(red: 255/255, green: 181/255, blue: 40/255))
            }
    }
}

#Preview {
    TextBubbleView()
}
