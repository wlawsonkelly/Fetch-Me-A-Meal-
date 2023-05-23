//
//  MealDetailView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import SwiftUI

struct MealDetailView: View {
    @StateObject var mealDetailViewModel: MealDetailViewModel

    init(mealDetailViewModel: MealDetailViewModel) {
        _mealDetailViewModel = StateObject(wrappedValue: mealDetailViewModel)
    }

    var body: some View {
        NavigationView {
            ScrollView {
                if let recipe = mealDetailViewModel.recipe {
                    AsyncImage(url: URL(string: recipe.strMealThumb ?? "")) { image in
                        image
                            .resizable()
                            .frame(width: 60, height: 60)
                    } placeholder: {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .redacted(reason: .placeholder)
                    }
                    VStack {
                        Text(recipe.strInstructions ?? "")
                        ForEach(recipe.getIngredients()) { ingredient in
                            if let measurement = ingredient.measureMent {
                                Text("\(ingredient.ingredient) ")
                            }
                        }
                    }
                }
            }
            .onAppear {
                Task {
                    try await mealDetailViewModel.getDetails(id: mealDetailViewModel.id)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
