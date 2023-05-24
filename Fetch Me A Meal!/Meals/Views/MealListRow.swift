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
            if let url = URL(string: meal.strMealThumb) {
                CacheAsyncImageView(url: url) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(12)
                    }
                }
                Text(meal.strMeal)
            }
        }
    }
}
