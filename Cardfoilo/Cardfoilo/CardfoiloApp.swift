//
//  CardfoiloApp.swift
//  Cardfoilo
//
//  Created by dgsw56 on 2/2/25.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isLaunch = true
}

@main
struct CardfoiloApp: App {
    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if appState.isLaunch {
                    LodingView()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                appState.isLaunch = false
                            }
                        }
                } else {
                    OpeningView()
                        
                }
            }
            
        }
    }
}
