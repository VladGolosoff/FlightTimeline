//
//  ContentView.swift
//  FlightTimeline
//
//  Created by Alexey Efimov on 06.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Home")
                }
            UserProfile()
                .tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
