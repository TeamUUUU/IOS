//
//  AddNewBoard.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit

class AddNewBoard: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    
    
    @IBOutlet weak var descriptionText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addBoard(_ sender: Any)
    {
        let boards = OAIDefaultApi()
        let user = OAIDefaultConfiguration.sharedConfig()?.username
        
        let board = OAIBoard()
        board.title = titleText.text
        board._description = descriptionText.text
        board.createdAt = NSDate().timeIntervalSince1970 as NSNumber
        
        boards.boardsPost(withUserId: user, board: board, completionHandler: { (board, error) in
                        assert(board != nil, "Expected board")
                        assert(error == nil, "Got error")
                        updateBoards()
                    })
        
        dismissPopUp(self)
    }
    
    @IBAction func dismissPopUp(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
