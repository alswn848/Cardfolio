//
//  AuthChoiceBox.swift
//  Cardfoilo
//
//  Created by dgsw56 on 2/4/25.
//

import SwiftUI

struct AuthChoiceBox: View {
    var image: String
    var text: String
    var color: Color
    var body: some View {
        VStack(alignment:.leading) {
            ZStack{
                if color == .yellow {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 320, height: 50)
                        .foregroundColor(color)
                } else {
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.grey, lineWidth: 1)
                        .frame(width: 320, height: 50)
                        .foregroundColor(color)
                }
                
                HStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 19)
                        .clipped()
                        .padding(.trailing,50)
                    Text(text)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .padding(.trailing, 75)
                        .frame(alignment: .center)
                    Spacer()
                }
                .padding(.leading,60)
            }
        }
    }
}

