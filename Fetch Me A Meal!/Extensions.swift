//
//  Extensions.swift
//  Fetch Me A Meal!
//
//  Created by Lawson Kelly on 5/23/23.
//

import Foundation

extension String: Identifiable {
    public var id: String { return self }

    func getYoutubeId() -> String? {
        let splitArray = self.components(separatedBy: "v=")
        return splitArray.last
    }
}
