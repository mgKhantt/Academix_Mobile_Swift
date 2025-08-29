//
//  CurveWaveView.swift
//  Academix_Mobile
//
//  Created by Khant Phone Naing  on 30/08/2025.
//

import SwiftUI


struct CurveWaveView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Start at top-left
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height)) // down left edge

        // First curve: downward
        path.addQuadCurve(
            to: CGPoint(x: rect.width * 0.5, y: rect.height),        // middle bottom
            control: CGPoint(x: rect.width * 0.25, y: rect.height * 1.3) // 30% more than height
        )

        // Second curve: upward (inverse)
        path.addQuadCurve(
            to: CGPoint(x: rect.width, y: rect.height),             // right bottom
            control: CGPoint(x: rect.width * 0.75, y: rect.height * 0.7) // 70% of height
        )
        
        // Close path along top
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    CurveWaveView()
        .frame(height: 300)
}
