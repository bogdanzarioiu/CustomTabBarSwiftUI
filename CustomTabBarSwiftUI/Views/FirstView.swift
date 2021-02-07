//
//  FirstView.swift
//  CustomTabBarSwiftUI
//
//  Created by Bogdan on 2/7/21.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        Color(.systemGray6)
            .ignoresSafeArea()
            .navigationTitle("First")
            }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
