//
//  HomeView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var destinationsVM: DestinationsViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                DestinationsList(destinations: destinationsVM.destinations)
            }
            .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
            .environmentObject(DestinationsViewModel())
    }
}
