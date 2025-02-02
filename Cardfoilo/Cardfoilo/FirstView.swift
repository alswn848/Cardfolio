//
//  FirstView.swift
//  CardFolio-iOS
//
//  Created by dgsw56 on 1/26/25.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer().frame(width: 20)
                Image("first")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 185, height: 170.04257202148438)
                    .clipped()
                Spacer()
            }
            .padding(.bottom, 16)
            HStack{
                Spacer().frame(width: 50)
                Text("첫인상의\n차이를 만들다")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.bottom, 8)
            HStack{
                Spacer().frame(width: 50)
                Text("첫인상이 결정되는 시간 “단 3초\" 그 짧은 순간, 당신은 무엇을 전하고 싶나요?")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.subtext)
                Spacer()
            }
            .padding(.bottom,24)
            
            NavigationLink {
                LoginView()
            } label: {
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 137, height: 48)
                    .foregroundColor(.black)
                    .overlay(
                        Text("시작하기")
                            .font(.title2)
                            .foregroundColor(.white)
                    )
            }
            .padding(.trailing, 154)

            
        }
    }
}

#Preview {
    FirstView()
}
