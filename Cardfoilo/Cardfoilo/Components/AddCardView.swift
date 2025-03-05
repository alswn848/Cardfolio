//
//  AddCardView.swift
//  Cardfoilo
//
//  Created by dgsw56 on 3/5/25.
//

import SwiftUI

struct AddCardView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 330, height: 300)
                .background(.white)
                .cornerRadius(6)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 0)
                .padding(.bottom, 200)
            
            VStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 300, height: 192)
                  .background(
                    Image("mycardAdd")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 300, height: 192)
                      .clipped()
                  )
                  .padding(15)
                
                Button {
                    EmptyView()
                } label: {
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 300, height: 45)
                            .background(.black)
                            .cornerRadius(10)
                        Text("명함 추가하기")
                            .foregroundColor(.white)
                    }
                    
                }
                
                
            }
            .padding(.bottom, 220)
            
        }
    }
}

#Preview {
    AddCardView()
}
