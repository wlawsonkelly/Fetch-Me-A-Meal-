//
//  MealDetailViewModel.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    @Published var recipe: Recipe?
    @Published var instructions: [String] = []
    let id: String

    init(id: String) {
        self.id = id
    }

    func getDetails(id: String) async throws {
        do {
            let fetchedRecipe = try await MealAPIManager.shared.getDesertRecipe(id: id)
            DispatchQueue.main.async {
                self.recipe = fetchedRecipe
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
