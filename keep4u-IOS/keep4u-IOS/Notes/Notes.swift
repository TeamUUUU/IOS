//
//  Notes.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 08/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxCocoa

var notesObservable = BehaviorRelay<Array<OAINote>>(value: [])

var lastBoardId : String = ""

var tokenId : String = ""

public func updateNotes(withBoardId boardId : String)
{
    let api = OAIDefaultApi()
    
    api.boardsBoardIdNotesGet(withAuthorization:tokenId, boardId: boardId, completionHandler: { (notesRaw, error) in
        
        assert(error == nil, "Got error")
        
        guard let notes = notesRaw else {
            print("\(#function): failed to fetch notes")
            assert(false, "Expected notes")
            return
        }
        
//        print("notes count: \((notes as! Array<OAIBoard>).count)")
//        print("last note: \(String(describing: (notes as! Array<OAINote>).last))")
        
        notesObservable.accept(notes as! Array<OAINote>)
        lastBoardId = boardId
    }
    )
    
    
}
