//
//  MealAPIManager.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation
import Combine

protocol MealAPI {
    func getDesertList() async throws -> [MealListData]
    func getDesertRecipe(id: String) async throws -> Recipe?
}

class MealAPIManager: MealAPI {
    static let shared = MealAPIManager()

    static let baseUrl = "https://themealdb.com"
    static let desertEndpoint = "/api/json/v1/1/filter.php?c=Dessert"

    private init() {}

    func getDesertList() async throws -> [MealListData] {
        guard let url = URL(string: MealAPIManager.baseUrl + MealAPIManager.desertEndpoint) else { return []
        }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let mealList = try JSONDecoder().decode(MealListResponse.self, from: data)
        return mealList.meals
    }

    func getDesertRecipe(id: String) async throws -> Recipe? {
        return nil
    }
}
