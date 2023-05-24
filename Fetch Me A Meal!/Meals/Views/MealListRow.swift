//
//  MealListRow.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import SwiftUI

struct MealListRow: View {
    var meal: MealListData

    var body: some View {
        HStack {
            UrlImageView(urlString: meal.strMealThumb)
                .cornerRadius(12)
            Text(meal.strMeal)
        }
    }
}
