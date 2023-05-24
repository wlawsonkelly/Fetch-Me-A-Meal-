//
//  ImageCache.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/24/23.
//

import Foundation
import UIKit

class ImageCache {
    var cache = NSCache<NSString, UIImage>()

    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }

    func set(forKey: String, image: UIImage) {
        cache.setObject(image, forKey: NSString(string: forKey))
    }
}

extension ImageCache {
    private static var imageCache = ImageCache()
    static func getImageCache() -> ImageCache {
        return imageCache
    }
}
