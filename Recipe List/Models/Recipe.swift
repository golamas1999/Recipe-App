//
//  Recipe.swift
//  Recipe List App
//
//  Created by Jason Nelken on 9/2/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[Ingredients]
    var directions:[String]
    var highlights:[String]
}

class Ingredients: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
    
}


