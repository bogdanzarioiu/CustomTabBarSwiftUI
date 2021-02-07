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
    @State private var isSheetShowing = false
    
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
            CustomTabView(selectedTab: $selectedTab, isSheetShowing: $isSheetShowing)
                .frame(height: 50)
            
        }
        .sheet(isPresented: $isSheetShowing, content: {
            ZStack {
                Color(.systemRed)
                    .ignoresSafeArea()
                Text("This is a sheet")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
