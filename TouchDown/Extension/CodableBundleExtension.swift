//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file:String)->T{
        
        //MARK - LOCCATE JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate file in Bundle")
        }
        
        //MARK - CREATED PROPERTY FOR DATA
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to locate file with url: \(url)")
        }
        
        //MARK - CREATE DECODER
        let decoder = JSONDecoder()
        
        guard let decoded = try?decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode data")
        }
        
        return decoded
        
        
    }
}
