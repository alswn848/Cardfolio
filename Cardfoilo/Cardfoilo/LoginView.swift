//
//  LoginView.swift
//  CardFolio-iOS
//
//  Created by dgsw56 on 1/27/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Text("NAME")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(10)
                Text("사소한 것에서 결정되는 차이\n당신의 가치를 더하다, name")
                    .foregroundColor(.subtext)
                Spacer()
                NavigationLink {
                    EmptyView() //MARK: KakaoView 이런시으로
                } label: {
                    AuthChoiceBox(image: "kakao", text: "카카오로 시작하기", color: .yellow)
                    
                }
                
                NavigationLink {
                    EmptyView() //MARK: KakaoView 이런시으로
                } label: {
                    AuthChoiceBox(image: "naver", text: "네이버로 시작하기", color: .white)
                    
                }
                
                NavigationLink {
                    EmptyView() //MARK: KakaoView 이런시으로
                } label: {
                    AuthChoiceBox(image: "google", text: " 구글로 시작하기 ", color: .white)
                    
                }

                Image(.ehsms)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 320, height: 20)
                    .clipped()
                    .padding(10)
                Button {
                    EmptyView()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 2)
                            .stroke(Color.grey, lineWidth: 1)
                            .frame(width: 320, height: 50)
                            .foregroundColor(.white)
                        Text("휴대폰 번호로 시작하기")
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                    }
                }
                HStack{
                    Text("로그인에 어려움이 있나요?")
                        .font(Font.custom("Pretendard", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.25, green: 0.26, blue: 0.26))
                    Button {
                        EmptyView()
                    } label: {
                        Text("문의하기")
                            .font(Font.custom("Pretendard", size: 14))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.25, green: 0.26, blue: 0.26))
                    }
                    
                }
                .padding(10)
            }

        }
    }
}
#Preview {
    LoginView()
}
