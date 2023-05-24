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
                if let recipe = mealDetailViewModel.recipe,
                   let imageUrl = URL(string: recipe.strMealThumb ?? "") {
                    CacheAsyncImageView(url: imageUrl) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .frame(width: geometry.size.width, height: 300)
                        }
                    }
                    VStack(alignment: .leading, spacing: 16) {
                        VStack(alignment: .leading) {
                            Text("Instructions:")
                                .font(.title)
                                .padding(.bottom, 4)
                            Text(recipe.strInstructions ?? "")
                        }
                        VStack(alignment: .leading) {
                            Text("Measurements:")
                                .font(.title)
                                .padding(.bottom, 4)
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
                        VStack {
                            HStack {
                                Text("Video:")
                                    .font(.title)
                                Spacer()
                            }
                            if let youtube = recipe.strYoutube,
                               let videoId = youtube.getYoutubeId() {
                                TutorialView(tutorialVideoId: videoId)
                                    .frame(width: geometry.size.width - 32, height: 300)
                                    .cornerRadius(16)
                            }
                        }
                    }
                    .padding()
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
