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
                AsyncImage(url: URL(string: mealDetailViewModel.recipe?.strMealThumb ?? "")) { image in
                    image
                        .resizable()
                        .frame(width: 60, height: 60)
                } placeholder: {
                    Rectangle()
                        .redacted(reason: .placeholder)
                }
                Text(mealDetailViewModel.recipe?.strInstructions ?? "")
                Text(mealDetailViewModel.recipe?.strIngredient1 ?? "")
                Text(mealDetailViewModel.recipe?.strIngredient2 ?? "")
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
