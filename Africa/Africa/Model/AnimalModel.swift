//
//  AnimalModel.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import Foundation

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
