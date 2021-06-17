//
//  String+Extension.swift
//  Gym Purple
//
//  Created by Gabriel on 16/06/21.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
