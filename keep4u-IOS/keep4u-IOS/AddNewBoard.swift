//
//  AddNewBoard.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit

class AddNewBoard: UIViewController
{
    @IBOutlet weak var headerBoard: UILabel!
    
    @IBOutlet weak var actionButton: UIButton!
    
    var board : OAIBoard?

    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var descriptionText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if (self.board == nil)
        {
            self.headerBoard.text = "Add Board".localized
            self.actionButton.setTitle("Add".localized, for: UIControl.State.normal)
        }
        else if (self.board != nil)
        {
            self.headerBoard.text = "Edit Board".localized
            self.actionButton.setTitle("Save".localized, for: UIControl.State.normal)
            
            self.titleText.text = board!.title
            self.descriptionText.text = board!._description
        }
    }
    

    @IBAction func addBoard(_ sender: Any)
    {
        let api = OAIDefaultApi()
        
        if (self.board == nil)
        {
            self.board = OAIBoard()
            
            board!.title = titleText.text
            board!._description = descriptionText.text
            board!.createdAt = NSDate().timeIntervalSince1970 as NSNumber
            
            api.boardsPost(withAuthorization:tokenId, board: board, completionHandler: { (board, error) in
                            assert(board != nil, "Expected board")
                            assert(error == nil, "Got error")
                            updateBoards()
                        })
        }
        else if (self.board != nil)
        {
            board!.title = titleText.text
            board!._description = descriptionText.text
            board!.changedAt = Int(NSDate().timeIntervalSince1970) as NSNumber
            
            api.boardsBoardIdPatch(withBoardId: board!._id, authorization: tokenId, board: board, completionHandler: { (board, error) in
                assert(board != nil, "Expected board")
                assert(error == nil, "Got error")
                updateBoards()
            })
        }
        
        dismissPopUp(self)
    }
    
    @IBAction func dismissPopUp(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
}
