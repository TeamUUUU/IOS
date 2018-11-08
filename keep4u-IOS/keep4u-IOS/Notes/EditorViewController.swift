//
//  EditorViewController.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 08/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxSwift

class EditorViewController: UIViewController {
    
    let disposeBag = DisposeBag()

    @IBOutlet weak var editorTextView: UITextView!
    
    public weak var owner : NotesTapBarController?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.editorTextView.text = owner!.note?.content
        
        editorTextView.rx.text.orEmpty.bind(to: owner!.rawData).disposed(by: disposeBag) // Probably can cause memory leaks
        
//        owner!.rawData.asObservable().bind(to: self.editorTextView.rx.text).disposed(by: disposeBag)
        
//        owner?.rawData.value = owner!.note!.content

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
