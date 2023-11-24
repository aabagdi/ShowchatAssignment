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
        TabView { // the nav bar itself, with all the buttons on the bottom
            ShowchatView() // this button leads to Showchat view
                .tabItem {
                    Image(systemName: "text.bubble")
                    Text("Showchat")
                    
                }
            ProfileView() // this button leads to the faux profile view
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            NotifsView() // this button leads to the faux notifications view
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
