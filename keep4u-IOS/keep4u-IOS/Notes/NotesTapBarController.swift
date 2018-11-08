//
//  NotesTapBarController.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 08/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class NotesTapBarController: UITabBarController {
        
    public var note : OAINote?
    
    let rawData = Variable<String>("")

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        rawData.value = note!.content
        
        guard let editorViewController = self.viewControllers?.first as? EditorViewController else {
            assert(false)
        }
        
        editorViewController.owner = self
        
        guard let markDownViewController = self.viewControllers![1] as? MarkDownViewController else {
            assert(false)
        }
        
        markDownViewController.owner = self
        
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
