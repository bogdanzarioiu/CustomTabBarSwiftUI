//
//  CustomTabBarButtonStyle.swift
//  CustomTabBarSwiftUI
//
//  Created by Bogdan on 2/7/21.
//

import SwiftUI

struct CustomTabBarButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
   
}


