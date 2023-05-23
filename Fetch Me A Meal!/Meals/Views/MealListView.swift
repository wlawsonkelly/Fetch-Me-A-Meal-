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
            List {
                Text("hello world")
            }
            .listStyle(.plain)
            .navigationTitle("Fetch Me A Meal!")
        }
        .navigationViewStyle(.stack)
    }
}

struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
    }
}
