//
//  LeftMenuNavigation.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 05/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LeftMenuNavigation: UIViewController {
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var containerView: UIView!
    weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView = containerView.subviews.first as? UITableView
        assert(tableView != nil, "Got error")
        
        tableView.delegate = nil
        tableView.dataSource = nil
        
        hotObservable.asObservable()
            .bind(to: tableView.rx.items(cellIdentifier: "reuseIdentifier", cellType: TableViewCell.self))  { (row, element, cell) in
                
                cell.titleText.text = element.title
                cell.descriptionText.text = element._description
                cell.board = element
                
            }.disposed(by: disposeBag)
        
        tableView.rx
            .itemAccessoryButtonTapped
            .subscribe({ indexPath in

                self.performSegue(withIdentifier: "ShowBoardDetails", sender: hotObservable.value[(indexPath.element?.row)!])
            })
            .disposed(by: disposeBag)
        
        tableView.rx.itemSelected.subscribe(onNext: { item in
    
            updateNotes(withBoardId: hotObservable.value[item.row]._id)
            
        }).disposed(by: disposeBag)
        
        updateBoards( { (boardsRaw, error) in
            
            guard let boards = boardsRaw as? Array<OAIBoard> else { return }
            
            guard let firstBoard = boards.first else { return }
            
            updateNotes(withBoardId: firstBoard._id)
        })
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segue.identifier
        {
            case "ShowBoardDetails":
                (segue.destination as! BoardDetails).board = sender as? OAIBoard
                break
            default:
                super.prepare(for: segue, sender: sender)
        }
    }
}
