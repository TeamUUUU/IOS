//
//  NoteCollectionViewCell.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 08/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxSwift
import RxGesture

class NoteCollectionViewCell: UICollectionViewCell
{
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    public var note : OAINote?
    
    override func draw(_ rect: CGRect)
    {
        super.draw(rect)
        
        self.rx
            .longPressGesture()
            .when(.recognized)
            .subscribe(onNext: { _ in
                
                let api = OAIDefaultApi()
                
                api.notesNoteIdDelete(withNoteId: self.note!._id, completionHandler: { (error) in
                    assert(error == nil, "Failed to delete board")
                    
                    updateNotes(withBoardId: self.note!.boardId)
                })
            })
            .disposed(by: disposeBag)
    }
    
    
}
