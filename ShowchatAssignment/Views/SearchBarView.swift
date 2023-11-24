//
//  SearchBarView.swift
//  ShowchatAssignment
//
//  Created by Aadit Bagdi on 11/24/23.
//

import Foundation
import SwiftUI

/*
 The default iOS search bar wasn't exactly what the Figma file had so this is my closest approximation. I made a TextField and made the background color as close to the same shade of gray as I could. As well, the clear button works by just setting the State variable for the search string to an empty string.
 */

struct SearchBarView : View {
    @State private var searchText : String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.secondary)
            TextField("Show & season you're watching", text: $searchText)
                .textInputAutocapitalization(.never) // disable auto-capitalization of user input in text field
            Image(systemName: "xmark")
                .foregroundColor(Color.secondary)
                .onTapGesture {
                    searchText = "" // clear text field when 'x' is tapped
                }
        }
        .padding()
        .background(
            Rectangle()
                .fill(Color(red: 0.2, green: 0.21, blue: 0.22)) //  closest color I could get to match the spec
                .preferredColorScheme(.dark) // force dark mode
            
        )
    }
}

#Preview {
    SearchBarView()
}
