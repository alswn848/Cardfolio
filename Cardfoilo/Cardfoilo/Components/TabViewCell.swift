import Foundation
import SwiftUI

struct TabViewCell: View {
    
    let type: TabViewType
    let isSelected: Bool
    
    init(type: TabViewType, isSelected: Bool) {
        self.type = type
        self.isSelected = isSelected
    }
    
    
    var body: some View {
        VStack {
            ZStack {
                Image(!isSelected ? type.image : type.selectedImage)
                    .font(.system(size: 32))
                    
            }
            Text(type.text)
                .foregroundColor(.black)
        }
    }
}
