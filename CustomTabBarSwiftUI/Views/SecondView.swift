//
//  SecondView.swift
//  CustomTabBarSwiftUI
//
//  Created by Bogdan on 2/7/21.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Color(.systemGray4)
            .ignoresSafeArea()
            .navigationTitle("Second")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
