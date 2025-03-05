//
//  MainView.swift
//  Cardfoilo
//
//  Created by dgsw56 on 2/8/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 420, height: 305.42554)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.35, green: 0.03, blue: 0.84), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.76, green: 0.65, blue: 1), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.2, y: 0),
                            endPoint: UnitPoint(x: 0.57, y: 1)
                        )
                    )
                Spacer()
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 420, height: 259.14893)
                .background(.white)
                .cornerRadius(400)
                .padding(.bottom, 150)
            
            AddCardView()
            
            
        }
    }
}

#Preview {
    MainView()
}
