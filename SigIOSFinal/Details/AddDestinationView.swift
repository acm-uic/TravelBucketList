//
//  AddDestinationView.swift
//  sigios
//
//  Created by Quynh Tram on 3/11/24.
//

import SwiftUI

struct AddDestinationView: View {
    @EnvironmentObject var destinationsVM: DestinationsViewModel
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.vacation
    @State private var description: String = ""
    @State private var location: String = ""
    @State private var date: String = ""
    @State private var navigateToDes = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Name")){
                    TextField("Trip Name:",text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")){
                    TextField("Itinerary",text: $description)
                }
                
                Section(header: Text("Location")){
                    TextField("Destination",text: $location)
                    
                }
                
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToDes){
                        DestinationView(destination: destinationsVM.destinations.sorted{$0.date > $1.date} [0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveDestination()
                            navigateToDes = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        
                    }
                    .disabled(name.isEmpty || location.isEmpty || description.isEmpty)
                    
                }
            })
            .navigationTitle("New Destinations")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddDestinationView()
        .environmentObject(DestinationsViewModel())
}

extension AddDestinationView{
    private func saveDestination(){
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm-dd-yyyy"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let destination = Destination(name: name, image: "", description: description, location: location, date: datePublished, url: "", category: selectedCategory.rawValue)
        destinationsVM.addDestination(destination: destination)
    }
}
