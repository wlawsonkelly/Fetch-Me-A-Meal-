//
//  MealListView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import SwiftUI

struct MealListView: View {
    @StateObject var mealListViewModel = MealListViewModel()
    @State var selectedId: String? = nil

    var body: some View {
        NavigationView {
            // Lists are lazy which is interesting for the Image Cache!
            List(mealListViewModel.meals) { meal in
                MealListRow(meal: meal)
                    .onTapGesture {
                        selectedId = meal.idMeal
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Fetch Me A Meal!")
            .onAppear {
                Task {
                    try await mealListViewModel.getMeals()
                }
            }
            .sheet(item: $selectedId) { id in
                MealDetailView(mealDetailViewModel: MealDetailViewModel(id: id))
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
