//
//  Todos.swift
//  JSONDecoder Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 6/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct Todos {
    
    
    var userId : Int?
    var id : Int?
    var title : String?
    var completed : Bool?
    
    enum codingKeys : String,CodingKey {
        case userId
        case id
        case title
        case completed
    }
    
    
}
