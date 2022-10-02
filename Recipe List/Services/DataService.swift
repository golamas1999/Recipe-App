//
//  DataService.swift
//  Recipe List
//
//  Created by Jason Nelken on 9/2/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        //Parse local json file
        
        //Get a url path to json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if path string is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create an url object
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let decoder = JSONDecoder()
            //Create a data object
            let data = try Data(contentsOf: url)
            //Decode the data with a json decoder
            
            do {
                //Decode the data with a json decoder
                let recipeData = try decoder.decode([Recipe].self , from: data)
                //Add the unique IDs
                for r in recipeData{
                    r.id=UUID()
                    
                    //Add Unique ID to Recipe Ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                //Return the recipes
                return recipeData
                
            }
            
            catch {
                //erro with getting data
                print(error)
            }
            
        }
        
        catch {
            print(error)
        }
        
        return [Recipe]()
    }
    
}
