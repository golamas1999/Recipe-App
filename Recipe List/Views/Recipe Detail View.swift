
//
//  Recipe Detail View.swift
//  Recipe List App
//
//  Created by Jason Nelken on 9/7/22.
//

import SwiftUI

struct Recipe_Detail_View: View {
    var recipe:Recipe
    var body: some View {
        
        VStack (alignment: .leading){
        ScrollView{
        //MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            //MARK Ingrediants
            VStack(alignment: .leading){
            Text("Ingredients")
                .font(.headline)
                .padding([.bottom, .top], 5)
                ForEach (recipe.ingredients) {item in Text("•" + item.name)
                }
                }
            .padding(.horizontal)
            //MARK Divider
            Divider()
            //MARK Directions
            VStack(alignment: .leading){
                Text("Directions").font(.headline)
                    .padding([.bottom, .top], 5)
                
                ForEach(0..<recipe.directions.count, id: \.self) {index in
                
                Text(String(index+1) + "." + recipe.directions[index])
                        .padding([.bottom, .top], 5)
                }
            }
            .padding(.horizontal)
        }
        }.navigationBarTitle(recipe.name)
}
}
struct Recipe_Detail_View_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create dummy recipe and pass it into the detail view so we can see a preview
        let model = RecipeModel()
       
        Recipe_Detail_View(recipe: model.recipes[0])
    }
}
