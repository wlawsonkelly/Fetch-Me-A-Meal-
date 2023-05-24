//
//  UrlImageView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/24/23.
//

import Foundation
import SwiftUI

struct UrlImageView: View {
    @ObservedObject var urlImageViewModel: UrlImageViewModel

    init(urlString: String?) {
        urlImageViewModel = UrlImageViewModel(urlString: urlString)
    }

    var body: some View {
        if let uiImage = urlImageViewModel.image {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
        }
    }
}
