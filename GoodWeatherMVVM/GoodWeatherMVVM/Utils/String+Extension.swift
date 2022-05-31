//
//  String+Extension.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
