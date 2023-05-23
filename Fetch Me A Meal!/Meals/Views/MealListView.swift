//
//  MealListView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import SwiftUI

struct MealListView: View {
    @StateObject var mealListViewModel = MealListViewModel()

    var body: some View {
        NavigationView {
            List(mealListViewModel.meals) { meal in
                Text(meal.strMeal)
            }
            .listStyle(.plain)
            .navigationTitle("Fetch Me A Meal!")
            .onAppear {
                Task {
                    try await mealListViewModel.getMeals()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
    }
}
