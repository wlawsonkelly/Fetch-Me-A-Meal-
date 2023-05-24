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
        GeometryReader { geometry in
            ScrollView {
                if let recipe = mealDetailViewModel.recipe {
                    AsyncImage(url: URL(string: recipe.strMealThumb ?? "")) { image in
                        image
                            .resizable()
                            .frame(width: geometry.size.width, height: 300)
                    } placeholder: {
                        Rectangle()
                            .frame(width: geometry.size.width, height: 300)
                            .redacted(reason: .placeholder)
                    }
                    VStack(alignment: .leading, spacing: 16) {
                        VStack(alignment: .leading) {
                            Text("Instructions:")
                                .font(.title)
                            Text(recipe.strInstructions ?? "")
                        }
                        VStack(alignment: .leading) {
                            Text("Measurements:")
                                .font(.title)
                            ForEach(recipe.getIngredients()) { ingredient in
                                if ingredient.ingredient != "".trimmingCharacters(in: .whitespaces) {
                                    if let measurement = ingredient.measureMent {
                                        Text("\(ingredient.ingredient): \(measurement)")
                                    } else {
                                        Text("\(ingredient.ingredient)")
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                    VStack {
                        if let youtube = recipe.strYoutube {
                            TutorialView(tutorialUrl: youtube)
                                .frame(width: geometry.size.width - 32, height: 300)
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
    }
}
