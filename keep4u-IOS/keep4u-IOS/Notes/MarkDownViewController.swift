//
//  MarkDownViewController.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 09/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import markymark
import RxSwift

class MarkDownViewController: UIViewController {

    @IBOutlet weak var markDownViewController: MarkDownTextView!
    
    let disposeBag = DisposeBag()
    
    public weak var owner : NotesTapBarController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        owner?.rawData.asObservable().subscribe(onNext: { rawMD in // probably can cause memory leaks
            self.markDownViewController.text = rawMD
        }).disposed(by: disposeBag)

        // Do any additional setup after loading the view.
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
