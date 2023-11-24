//
//  MainView.swift
//  ShowchatAssignment
//
//  Created by Aadit Bagdi on 11/24/23.
//

import SwiftUI

/*
 The Main View that enables the navigation bar at the bottom. It's simply a TabView with different buttons to go to different views.
 */

struct MainView: View {
    var body: some View {
        TabView {
            ShowchatView()
                .tabItem {
                    Image(systemName: "text.bubble")
                    Text("Showchat")
                    
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            NotifsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
        }
    }
}

#Preview {
    MainView()
}
