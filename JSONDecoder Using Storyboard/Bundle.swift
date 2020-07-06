//
//  Bundle.swift
//  JSONDecoder Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 6/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

extension Bundle{
    
    func decode<T : Codable>(_ file : String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil)else{fatalError()}
        
        guard let data = try? Data(contentsOf: url) else{fatalError()}
        
        let decoder = JSONDecoder()
        guard let loadData = try? decoder.decode(T.self, from: data) else{fatalError()}
        
        
        return loadData
        
        
        
        
        
        
    }
    
    
}
