//
//  CardfoiloApp.swift
//  Cardfoilo
//
//  Created by dgsw56 on 2/2/25.
//

import SwiftUI

@main
struct CardfoiloApp: App {
    @State var isLaunch = true
    var body: some Scene {
        WindowGroup {
            if isLaunch {
                LodingView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isLaunch = false
                        }
                    }
            } else {
                OpeningView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}
