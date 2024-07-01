//
//  FruitModel.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
