//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import Foundation

extension Bundle {
    func decode<T: Decodable> (_ file: String) -> T {
        guard let URL = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) un bundle")

        }
        
        guard let data = try? Data(contentsOf: URL) else {
            fatalError("Failed to load file \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to parse the json file \(file)")
        }
        
        return decodedData
    }
}
