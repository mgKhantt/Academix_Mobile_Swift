//
//  CircleView.swift
//  Academix_Mobile
//
//  Created by Khant Phone Naing  on 30/08/2025.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Circle()
            .stroke(Color.theme.creamColor, lineWidth: 10)
            .overlay(
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
            )
            .frame(width: 161, height: 161)
    }
}
#Preview {
    CircleView()
}
