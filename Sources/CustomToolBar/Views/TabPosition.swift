//
//  SwiftUIView.swift
//  
//
//  Created by Demian Füglistaler on 02.12.2023.
//

import SwiftUI

///Custom Extension to return View Possition


struct PositionKey: PreferenceKey {
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
    
    static var defaultValue: CGRect = .zero
}


@available(iOS 15.0, *)
extension View {

    @ViewBuilder
    
    func viewPosition (completion: @escaping (CGRect) -> ()) -> some View {
        
        self.overlay {
            GeometryReader {
                let rect = $0.frame(in: .global)
                Color.clear
                    .preference(key: PositionKey.self, value: rect)
                    .onPreferenceChange(PositionKey.self, perform: completion)
            }
        }
        
    }
}
