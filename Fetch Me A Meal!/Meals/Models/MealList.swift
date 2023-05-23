//
//  Meal.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

struct MealListResponse: Codable {
    var meals: [MealListData]
}

struct MealListData: Codable {
    var idMeal: String
    var strMealThumb: String
    var strMeal: String
}
