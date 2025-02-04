import SwiftUI

struct OpeningView: View {
    let images: [String] = ["opening1","opening2","opening3"] // 색상 배열 추가
    @State private var currentIndex = 0
    let pageCount = 3

    var body: some View {
        NavigationView {
            VStack {
                
                TabView(selection: $currentIndex) {
                    ForEach(0..<pageCount, id: \.self) { index in
                        Image(images[index % images.count])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 310)
                            
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // 기본 인디케이터 숨김
                .animation(.easeInOut, value: currentIndex) // 페이지 전환 애니메이션 추가
                
                HStack {
                    DotsIndicator(pageCount: pageCount, currentIndex: currentIndex, color: .gray)
                        .padding(.top, 20)
                    Spacer()
                }
                .offset(x:60,y: -200)
                
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
                
                .padding(.trailing, 160)
            }
            
            
            
        }
    }
}

#Preview {
    OpeningView()
}

import SwiftUI

struct DotsIndicator: View {
    let pageCount: Int
    let currentIndex: Int
    let color: Color
    let size: CGFloat = 6
    let balloonSizeFactor: CGFloat = 2
    let dotSpacing: CGFloat = 10
    
    var body: some View {
        HStack(spacing: dotSpacing) {
            ForEach(0..<pageCount, id: \.self) { index in
                Circle()
                    .fill(color)
                    .frame(width: index == currentIndex ? size * balloonSizeFactor : size,
                           height: index == currentIndex ? size * balloonSizeFactor : size)
                    .animation(.spring(), value: currentIndex)
            }
        }
        .ignoresSafeArea()
    }
}

