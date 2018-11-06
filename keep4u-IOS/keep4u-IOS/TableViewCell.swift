//
//  TableViewCell.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 01/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell
{    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var descriptionText: UITextField!
    
    var board : OAIBoard!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse()
    {
        super.prepareForReuse()
    }
}
