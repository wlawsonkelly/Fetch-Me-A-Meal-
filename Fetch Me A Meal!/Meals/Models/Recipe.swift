//
//  Recipe.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

struct MealDetailResponse: Codable {
    var meals: [Recipe]
}

struct Recipe: Codable {
    var idMeal: String?
    var strMeal: String?
    var strDrinkAlternate: String?
    var strCategory: String?
    var strArea: String?
    var strInstructions: String?
    var strMealThumb: String?
    var strTags: String?
    var strYoutube: String?
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?
    var strSource: String?
    var strImageSource: String?
    var strCreativeCommonsConfirmed: Bool?
    var dateModified: String?

    func getIngredients() -> [IngredientMeasurement] {
        var ingredientArray: [IngredientMeasurement] = []
        if let ingredient = strIngredient1 {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure1
                )
            )
        }
        if let ingredient = strIngredient2  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure2
                )
            )
        }
        if let ingredient = strIngredient3  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure3
                )
            )
        }
        if let ingredient = strIngredient4  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure4
                )
            )
        }
        if let ingredient = strIngredient5  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure5
                )
            )
        }
        if let ingredient = strIngredient6  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure6
                )
            )
        }
        if let ingredient = strIngredient7  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure7
                )
            )
        }
        if let ingredient = strIngredient8  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure8
                )
            )
        }
        if let ingredient = strIngredient9  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure9
                )
            )
        }
        if let ingredient = strIngredient10  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure10
                )
            )
        }
        if let ingredient = strIngredient11  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure11
                )
            )
        }
        if let ingredient = strIngredient12  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure12
                )
            )
        }
        if let ingredient = strIngredient13  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure13
                )
            )
        }
        if let ingredient = strIngredient14  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure14
                )
            )
        }
        if let ingredient = strIngredient15  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure15
                )
            )
        }
        if let ingredient = strIngredient16  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure16
                )
            )
        }
        if let ingredient = strIngredient17  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure17
                )
            )
        }
        if let ingredient = strIngredient18  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure18
                )
            )
        }
        if let ingredient = strIngredient19  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure19
                )
            )
        }
        if let ingredient = strIngredient20  {
            ingredientArray.append(
                IngredientMeasurement(
                    ingredient: ingredient,
                    measureMent: strMeasure20
                )
            )
        }
        return ingredientArray
    }
}
