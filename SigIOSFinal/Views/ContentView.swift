//
//  ContentView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

#Preview {
    ContentView()
        .environmentObject(DestinationsViewModel())
}
