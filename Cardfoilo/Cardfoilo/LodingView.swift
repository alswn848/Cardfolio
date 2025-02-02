//
//  LodingView.swift
//  CardFolio-iOS
//
//  Created by dgsw56 on 1/27/25.
//

import SwiftUI

struct LodingView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 14)
                .foregroundColor(.grey)
                .frame(width: 200, height: 200)
            Text("LOGO")
                .font(.title)
        }
    }
}

#Preview {
    LodingView()
}
