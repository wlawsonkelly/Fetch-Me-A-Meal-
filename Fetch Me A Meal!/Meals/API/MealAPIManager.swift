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
    func getDesertList() async throws -> [MealListData] {
        guard let url = URL(string: "") else { return []
        }
        let urlRequest = URLRequest(url: url)
        return []
    }

    func getDesertRecipe(id: String) async throws -> Recipe? {
        return nil
    }
}
