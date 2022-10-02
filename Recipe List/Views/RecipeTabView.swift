//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Jason Nelken on 9/21/22.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
       
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("featured")
                    }
                }
          
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
    }
}
    struct RecipeTabView_Previews: PreviewProvider {
        static var previews: some View {
            RecipeTabView()
        }
    }


