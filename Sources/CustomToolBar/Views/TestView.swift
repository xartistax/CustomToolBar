//
//  SwiftUIView.swift
//  
//
//  Created by Demian Füglistaler on 02.12.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @available(iOS 13.0.0, *)
    var body: some View {
        CustomToolBar(
            toolBarContent: [
                CustomToolBarItem(title: "Home", icon : "house"),
                CustomToolBarItem(title: "Settings", icon : "line.3.horizontal.decrease.circle"),
                CustomToolBarItem(title: "Profile", icon : "person"),
                CustomToolBarItem(title: "Share", icon : "square.and.arrow.up")
            ]
        )
    }
}

#Preview {
    SwiftUIView()
}
  
