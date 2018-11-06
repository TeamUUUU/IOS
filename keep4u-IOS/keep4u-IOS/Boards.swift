//
//  Boards.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxCocoa

var hotObservable = BehaviorRelay<Array<OAIBoard>>(value: [])

public func updateBoards()
{
    let boards = OAIDefaultApi()
    let user = OAIDefaultConfiguration.sharedConfig()?.username
    
    boards.boardsGet(withUserId: user, completionHandler: { (boardsRaw, error) in
        
        assert(error == nil, "Got error")
        
        guard let boards = boardsRaw else {
            print("\(#function): failed to fetch boards")
            assert(false, "Expected boards")
            return
        }
        
        print("boards count: \((boards as! Array<OAIBoard>).count)")
        print("last board: \(String(describing: (boards as! Array<OAIBoard>).last))")
        
        hotObservable.accept(boards as! Array<OAIBoard>)
    }
    )
}
