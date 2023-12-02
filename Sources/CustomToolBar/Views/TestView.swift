//
//  SwiftUIView.swift
//  
//
//  Created by Demian Füglistaler on 02.12.2023.
//

import SwiftUI


@available(iOS 17.0, *)
struct SwiftUIView: View {
    @available(iOS 17.0, *)
    var body: some View {
        VStack {
            
                CustomToolBar()
                .preferredColorScheme(.light)
           
        }
    }
}


@available(iOS 17.0, *)
#Preview {
    SwiftUIView()
}
  
 
