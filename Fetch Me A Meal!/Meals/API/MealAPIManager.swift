//
//  MealAPIManager.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation
import Combine

protocol MealAPI {
    func getMeals() -> [Meal]
}

class MealAPIManager: MealAPI {

    func getMeals() -> [Meal] {
        return []
    }
}
