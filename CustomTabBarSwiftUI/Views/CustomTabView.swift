//
//  CustomTabView.swift
//  CustomTabBarSwiftUI
//
//  Created by Bogdan on 2/7/21.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                selectedTab = .first
            } label: {
                VStack {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Home")
                        .font(.caption2)
                }
                .foregroundColor(selectedTab == .first ? .red : .primary)
                
            }
            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 75, height: 75)
                        .shadow(color: .black, radius: 2)
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.primary)
                        .frame(width: 70, height: 70)
                }
                .offset(y: -30)
            }
            .buttonStyle(CustomTabBarButtonStyle())
            Spacer()
            Button {
                selectedTab = .second
                
            } label: {
                VStack {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Home")
                        .foregroundColor(.primary)
                        .font(.caption2)
                }
                .foregroundColor(selectedTab == .second ? .red : .primary)
                
            }
            Spacer()
            
            
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(selectedTab: .constant(.first))
    }
}
