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

class LeftMenuNavigation: UIViewController, UITableViewDelegate {
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var containerView: UIView!
    weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView = containerView.subviews.first as? UITableView
        assert(tableView == nil, "Got error")
        
        hotObservable.asObservable()
            .bind(to: tableView.rx.items(cellIdentifier: "reuseIdentifier", cellType: TableViewCell.self))  { (row, element, cell) in
                
                cell.titleText.text = element.title
                cell.descriptionText.text = element._description
                cell.board = element
                
            }.disposed(by: disposeBag)
        
        updateBoards()
        // Do any additional setup after loading the view.
    }
}
