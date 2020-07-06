//
//  JSONHandler.swift
//  JSONDecoder Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 6/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

class JSONHandler{
    
    static let jsonHandlerInstance = JSONHandler()
    
    var todos = [Todos]()
    
    func getJsonData(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else{return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        
            guard let data = data,error == nil else{
                print(error!.localizedDescription)
                return
            }
            
            do{
                
                self.todos = try JSONDecoder().decode([Todos].self, from: data)
                for result in self.todos {
                    print(result.completed ?? "N/A")
                }
            }catch let persingError{
                
                print(persingError)
            }
            
            
        }
        task.resume()
        
        
        
        
    }
    
    
    
}
