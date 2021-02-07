//
//  ContentView.swift
//  CustomTabBarSwiftUI
//
//  Created by Bogdan on 2/7/21.
//

import SwiftUI


enum Tab {
    case first
    case second
}


struct ContentView: View {
    @State private var selectedTab: Tab = .first
    
    var body: some View {
        VStack {
            switch selectedTab {
            case .first:
                NavigationView {
                    FirstView()
                }
            case .second:
                NavigationView {
                    SecondView()
                }
            }
            CustomTabView(selectedTab: $selectedTab)
                .frame(height: 50)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
