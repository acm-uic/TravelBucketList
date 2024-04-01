//
//  SigIOSFinalApp.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

@main
struct SigIOSFinalApp: App {
    @StateObject var destinationsViewModel = DestinationsViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(destinationsViewModel)
        }
    }
}
