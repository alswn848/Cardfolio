import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab : TabViewType = .share
    @State var paletteOn = false
    var body: some View {
        VStack {
            ZStack {
                EmptyView()
                    .opacity(selectedTab == .share ? 1 : 0)
                EmptyView()
                    .opacity(selectedTab == .mycard ? 1 : 0)
                EmptyView()
                    .opacity(selectedTab == .cardbook ? 1 : 0)
                EmptyView()
                    .opacity(selectedTab == .community ? 1 : 0)
                EmptyView()
                    .opacity(selectedTab == .profile ? 1 : 0)
            }
            Spacer()
//            Image("CutoutCircle")
//                .overlay {
//                    Button {
//                        paletteOn = true
//                    } label: {
//                        VStack {
//                            Image(systemName: "plus")
//                                .font(.system(size: 40))
//                            Text("그리기")
//                                .kerning(1.4)
//                                .padding(.bottom,8)
//                            Spacer()
//                        }
//                        .foregroundColor(.white)
//                        .padding(.top,17)
//                    }
                        ZStack {
                            HStack {
                                ForEach(TabViewType.allCases, id: \.self) { tab in
                                    Button(action: {
                                        selectedTab = tab
                                    }) {
                                        VStack {
                                            TabViewCell(type: tab, isSelected: selectedTab == tab)
                                        }
                                        .padding(.top,13)
                                    }
                                    
                                }
                            }
                        }
                    
                }
        }
    }


#Preview {
    CustomTabView()
}

