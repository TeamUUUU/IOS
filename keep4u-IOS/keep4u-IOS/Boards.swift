//
//  Boards.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxCocoa

let hotObservable = BehaviorRelay<Array<OAIBoard>>(value: [])

public func updateBoards()
{
    updateBoards(nil)
}

public func updateBoards(_ completionHandler: ((OAIBoards?, Error?) -> Void)?)
{
    let boards = OAIDefaultApi()

    boards.boardsGet(withAuthorization: tokenId, completionHandler: { (boardsRaw, error) in
        
//        assert(error == nil, "Got error")
        
        guard let boards = boardsRaw as? Array<OAIBoard> else {
            print("\(#function): failed to fetch boards")
//            assert(false, "Expected boards")
            
            hotObservable.accept(Array())
            return
        }
        
//        print("boards count: \((boards as! Array<OAIBoard>).count)")
//        print("last board: \(String(describing: (boards as! Array<OAIBoard>).last))")
        
        hotObservable.accept(boards)
        
        completionHandler?(boardsRaw, error)
    }
    )
}
