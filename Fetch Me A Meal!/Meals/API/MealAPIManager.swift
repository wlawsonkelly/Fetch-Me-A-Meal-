//
//  MealAPIManager.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

protocol MealAPI {
    func getDesertList() async throws -> [MealListData]
    func getDesertRecipe(id: String) async throws -> Recipe?
}

class MealAPIManager: MealAPI {
    static let shared = MealAPIManager()

    static let baseUrl = "https://themealdb.com"
    static let desertEndpoint = "/api/json/v1/1/filter.php?c=Dessert"
    static let idEndpoint = "/api/json/v1/1/lookup.php?i="

    private init() {}

    func getDesertList() async throws -> [MealListData] {
        guard let url = URL(string: MealAPIManager.baseUrl + MealAPIManager.desertEndpoint) else { return []
        }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let urlResponse = response as? HTTPURLResponse else {
            return []
        }
        if urlResponse.statusCode >= 400 {
            print("Failure")
            return []
        } else {
            let mealList = try JSONDecoder().decode(MealListResponse.self, from: data)
            return mealList.meals
        }
    }

    func getDesertRecipe(id: String) async throws -> Recipe? {
        guard let url = URL(string: MealAPIManager.baseUrl + MealAPIManager.idEndpoint + id) else { return nil
        }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let urlResponse = response as? HTTPURLResponse else {
            return nil
        }
        if urlResponse.statusCode >= 400 {
            print("Failure")
            return nil
        } else {
            let recipe = try JSONDecoder().decode(MealDetailResponse.self, from: data)
            return recipe.meals.first
        }
    }
}
