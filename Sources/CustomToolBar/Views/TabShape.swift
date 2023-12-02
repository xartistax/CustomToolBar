//
//  SwiftUIView.swift
//  
//
//  Created by Demian Füglistaler on 02.12.2023.
//

import SwiftUI

@available(iOS 13.0, *)

struct TabShape: Shape {
    
    var midpoint : CGFloat
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            ///Drawing the shape
            path.addPath( Rectangle().path(in: rect))
            /// Now drawing upwards shape
            path.move(to: .init(x: midpoint - 60, y: 0))
            
            let to = CGPoint (x: midpoint, y: -25)
            let controll1 = CGPoint (x: midpoint - 25, y: 0)
            let controll2 = CGPoint (x: midpoint - 25, y: -25)
            
            path.addCurve(to: to, control1: controll1, control2: controll2)
            
            let to1 = CGPoint (x: midpoint + 60, y: 0)
            let controll3 = CGPoint (x: midpoint + 25, y: -25)
            let controll4 = CGPoint (x: midpoint + 25, y: 0)
            
            path.addCurve(to: to1, control1: controll3, control2: controll4)
            
        }
    }
    
    @available(iOS 13.0, *)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
