//
//  ViewController.swift
//  JSONDecoder Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 4/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var todos = [Todos]()
    
    //MARK: Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        JsonHandler()
       
        
    }
    //MARK: Handlers
   
    func JsonHandler(){
       
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else{return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data,error == nil else{
                print(error!.localizedDescription)
                return
            }
            
            do{
                self.todos = try JSONDecoder().decode([Todos].self, from: data)
                DispatchQueue.main.async {
                    
                    self.tableView.reloadData()
                }
                
            }catch let persingError{
                print(persingError)
            }
            
        }
        task.resume()
        
        
        
    }
    


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TodosCell
        cell.useridLbl.text = String(todos[indexPath.row].userId ?? 0)
        cell.idLbl.text = String(todos[indexPath.row].id ?? 0)
        cell.titleLbl.text = todos[indexPath.row].title
        cell.compeltedLbl.text = String(todos[indexPath.row].completed ?? false)
        
        return cell
    
        
    }
    
    
    
    
}
