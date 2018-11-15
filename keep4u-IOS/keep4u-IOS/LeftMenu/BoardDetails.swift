//
//  BoardDetails.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit

class BoardDetails: UIViewController
{
    public var board : OAIBoard?

    @IBOutlet weak var createdLabel: UILabel!
    
    @IBOutlet weak var modifiedLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.createdLabel.text = NSDate.init(timeIntervalSince1970: board!.createdAt.doubleValue).description
        self.modifiedLabel.text = NSDate.init(timeIntervalSince1970: board!.changedAt.doubleValue).description

        // Do any additional setup after loading the view.
    }
    

    @IBAction func deleteBoard(_ sender: Any)
    {
        let boards = OAIDefaultApi()
        
        boards.boardsBoardIdDelete(withBoardId: board?._id, authorization: tokenId, completionHandler: { (error) in
            assert(error == nil, "Failed to delete board")
            
            updateBoards()
        })
        
        dismissPopUp(self)
    }
        
    @IBAction func dismissPopUp(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segue.identifier
        {
        case "editBoard":
            (segue.destination as! AddNewBoard).board = board
            break
        default:
            super.prepare(for: segue, sender: sender)
        }
    }
}
