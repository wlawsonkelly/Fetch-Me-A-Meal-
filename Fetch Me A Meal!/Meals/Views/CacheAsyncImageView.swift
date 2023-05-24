//
//  CacheAsyncImageView.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/24/23.
//

// I had to learn this from: https://www.youtube.com/watch?v=KhGyiOk3Yzk

import SwiftUI

struct CacheAsyncImageView<Content>: View where Content: View {

    private let url: URL
    private let scale: CGFloat
    private let transaction: Transaction
    private let content: (AsyncImagePhase) -> Content

    init(
        url: URL,
        scale: CGFloat = 1.0,
        transaction: Transaction = Transaction(),
        @ViewBuilder content: @escaping (AsyncImagePhase) -> Content
    ) {
        self.url = url
        self.scale = scale
        self.transaction = transaction
        self.content = content
    }

    var body: some View{
        if let cached = ImageCache[url] {
            let _ = print("cached: \(url.absoluteString)")
            content(.success(cached))
        } else {
            let _ = print("request: \(url.absoluteString)")
            AsyncImage(
                url: url,
                scale: scale,
                transaction: transaction
            ) { phase in
                cacheAndRender(phase: phase)
            }
        }
    }

    func cacheAndRender(phase: AsyncImagePhase) -> some View {
        if case .success (let image) = phase {
            ImageCache[url] = image
        }
        return content(phase)
    }
}

fileprivate class ImageCache {
    static private var cache: [URL: Image] = [:]

    static subscript(url: URL) -> Image? {
        get {
            ImageCache.cache[url]
        }
        set {
            ImageCache.cache[url] = newValue
        }
    }
}
