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
    
    boards.boardsGet(withUserId: user, completionHandler: { (boards, error) in
        assert(boards != nil, "Expected boards")
        assert(error == nil, "Got error")
        
        hotObservable.accept(boards as! Array<OAIBoard>)
    }
    )
}
