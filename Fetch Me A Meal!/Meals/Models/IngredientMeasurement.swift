//
//  IngredientMessurement.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

struct IngredientMeasurement: Identifiable {
    var id: String
    var ingredient: String
    var measureMent: String?

    init(
        ingredient: String,
        measureMent: String?
    ) {
        self.id = UUID().uuidString
        self.ingredient = ingredient
        self.measureMent = measureMent
    }
}
