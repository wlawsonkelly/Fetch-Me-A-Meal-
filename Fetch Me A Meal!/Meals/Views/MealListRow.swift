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
            AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                image
                    .resizable()
                    .frame(width: 60, height: 60)
            } placeholder: {
                Rectangle()
                    .redacted(reason: .placeholder)
            }
            Text(meal.strMeal)
        }
    }
}
