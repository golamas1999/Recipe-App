//
//  ContentView.swift
//  Recipe List App
//
//  Created by Jason Nelken on 9/2/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            List(model.recipes) { r in
                
                NavigationLink(destination: Recipe_Detail_View(recipe: r) , label: {
                    //MARK Row Item
                HStack(spacing: 20.0){
                    Image(r.image)
                        .resizable()
                        .scaledToFill().frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                }
            })
                    .navigationTitle("All Recipes")
        }
    }
        
}
                               
struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
}

