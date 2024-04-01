//
//  DestinationsViewModel.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 4/22/24.
//

import Foundation

class DestinationsViewModel: ObservableObject {
    @Published private(set) var destinations: [Destination] = []
    
    init(){
        destinations = Destination.all
    }
    func addDestination(destination: Destination){
        destinations.append(destination)
    }

}

