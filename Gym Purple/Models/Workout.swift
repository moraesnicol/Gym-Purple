//
//  File.swift
//  Gym Purple
//
//  Created by Gabriel on 14/06/21.
//

import UIKit






struct WorkoutModel {
   
    let name: Int
    let description: String
    let data: Date
}


extension Date {
    static var currentTimeStamp: Int64{
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
}
