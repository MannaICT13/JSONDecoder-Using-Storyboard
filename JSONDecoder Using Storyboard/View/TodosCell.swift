//
//  TodosCell.swift
//  JSONDecoder Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 6/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class TodosCell: UITableViewCell {

    
    //MARK:- Properties
    @IBOutlet weak var useridLbl: UILabel!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var compeltedLbl: UILabel!
    
    
    //MARK:- Initializers
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK:- Handlers
    
    

}
