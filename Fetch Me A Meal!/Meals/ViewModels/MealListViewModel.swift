//
//  MealListViewModel.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

class MealListViewModel: ObservableObject {
    @Published var meals: [MealListData] = []

    func getMeals() async throws {
        do {
            let mealList = try await MealAPIManager.shared.getDesertList()
            DispatchQueue.main.async {
                self.meals = mealList
            }
        } catch {
            print(error)
        }
    }
}
