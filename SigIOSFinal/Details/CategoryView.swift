//
//  CategoryView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 3/10/24.
//

import SwiftUI

struct CategoryView: View {
    var category:  Category
        
        var destinations: [Destination]{
            return Destination.all.filter{$0.category == category.rawValue}
        }
        
        var body: some View {
            ScrollView{
                DestinationsList(destinations:destinations)
            }
            .navigationTitle(category.rawValue)
        }
        
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.vacation)
    }
}
