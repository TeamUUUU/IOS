//
//  NotesViewController.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 08/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class NotesViewController: UIViewController {
    
    let disposeBag = DisposeBag()

    @IBOutlet weak var collectionViewContainer: UIView!
    weak var collectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        collectionView = collectionViewContainer.subviews.first!.subviews.first as? UICollectionView
        
        assert(collectionView != nil, "Got error")
        
        collectionView.delegate = nil
        collectionView.dataSource = nil
        
        notesObservable.asObservable()
            .bind(to: collectionView.rx.items) { (collectionView, row, element) in
                
                let indexPath = IndexPath(row: row, section: 0)
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noteReusableView", for: indexPath) as! NoteCollectionViewCell
                
                cell.titleLabel.text = element.title
                cell.contentLabel.text = element.content
                
                return cell
                
            }.disposed(by: disposeBag)
        
        collectionView.rx.modelSelected(OAINote.self).subscribe(onNext: { note in
            
            self.performSegue(withIdentifier: "showNote", sender: note)
            
        }).disposed(by: disposeBag)

        // Do any additional setup after loading the view.
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segue.identifier
        {
        case "showNote":
            (segue.destination as! NotesTapBarController).note = sender as? OAINote
            break
        default:
            super.prepare(for: segue, sender: sender)
        }
        
    }
}
