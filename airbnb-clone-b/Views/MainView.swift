//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    TapItem(text: "Explore", icon: "magnifing")
                }
            WishListView()
                .tabItem{
                    TapItem(text: "Wishlist", icon: "heart")
                }
            TripsView()
                .tabItem{
                    TapItem(text: "Trips", icon: "logo-icon")
                }
            InboxView()
                .tabItem{
                    TapItem(text: "Inbox", icon: "inbox")
                }
            ProfileView()
                .tabItem{
                    TapItem(text: "Profile", icon: "profile")
                }
        }
        .tint(Color("airbnbPrimary"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
