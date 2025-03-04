import Foundation

enum TabViewType: CaseIterable {
    case mycard
    case cardbook
    case share
    case community
    case profile
    

    
    var image: String {
        switch self {
        case .mycard:
            return "mycard"
        case .cardbook:
            return "cardbook"
        case .community:
            return "community"
        case .profile:
            return "profile"
        case .share:
            return "share"
        }
    }
    
    var selectedImage: String {
        switch self {
        case .mycard:
            return "mycard.fill"
        case .cardbook:
            return "cardbook.fill"
        case .community:
            return "community.fill"
        case .profile:
            return "profile.fill"
        case .share:
            return "share"
        }
    }
    
    
    var click: String {
        switch self {
        case .mycard:
            return "clickmycard"
        case .cardbook:
            return "clickcardbook"
        case .community:
            return "clickcommunity"
        case .profile:
            return "clickprofile"
        case .share:
            return "clickshare"
        }
    }
    
    var text: String {
        switch self {
        case .mycard:
            return "내 명함"
        case .cardbook:
            return "명합첩"
        case .community:
            return "커뮤니티"
        case .profile:
            return "프로필"
        case .share:
            return "공유"
        }
    }
}
