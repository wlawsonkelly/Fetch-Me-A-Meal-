//
//  TutorialView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/24/23.
//

import Foundation
import SwiftUI
import WebKit

struct TutorialView: UIViewRepresentable {
    let tutorialVideoId: String

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let urlString = "https://www.youtube.com/embed/\(tutorialVideoId)"
        guard let url = URL(string: urlString) else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}
