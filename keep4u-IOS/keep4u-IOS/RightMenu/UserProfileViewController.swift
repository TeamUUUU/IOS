//
//  UserProfileViewController.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 11/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit
import GoogleSignIn
import RxSwift
import RxCocoa

class UserProfileViewController: UIViewController, GIDSignInUIDelegate
{
    let disposeBag = DisposeBag()
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var gSignInButton: GIDSignInButton!
    @IBOutlet weak var sighOutButton: UIButton!
    
    let isSignedIn = BehaviorRelay<Bool>(value: true)
    
    var timer = Timer()
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function "updateCounting" with the interval of 1 seconds
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("updateCounting"), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounting()
    {
        updateBoards()
        updateNotes(withBoardId: lastBoardId)
    }
    
    var downloadableImage: Observable<DownloadableImage>?{
        didSet
        {
            self.downloadableImage?
                .asDriver(onErrorJustReturn: DownloadableImage.offlinePlaceholder)
                .drive(userImage.rx.downloadableImageAnimated(CATransitionType.fade.rawValue))
                .disposed(by: disposeBag)
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        scheduledTimerWithTimeInterval()
        
        self.updateUIPresentation(signedIn: false)
        
        self.userImage.layer.masksToBounds = true;
        self.userImage.layer.cornerRadius = 80;
        
        GIDSignIn.sharedInstance().uiDelegate = self;
        
        NotificationCenter.default.rx.notification(Notification.Name(rawValue: "ToggleAuthUINotification")).subscribe(
        {_ in
            
            let gApi = GIDSignIn.sharedInstance()!
            
            let signedIn = gApi.currentUser.authentication != nil
            
            if (signedIn)
            {
                tokenId = gApi.currentUser.authentication.idToken                

                updateBoards( { (boardsRaw, error) in
                    
                    guard let boards = boardsRaw as? Array<OAIBoard> else { return }
                    
                    guard let firstBoard = boards.first else { return }
                    
                    updateNotes(withBoardId: firstBoard._id)
                })
                
                if (gApi.currentUser.profile.hasImage)
                {
                    let reachabilityService = Dependencies.sharedDependencies.reachabilityService
                    let url = gApi.currentUser.profile.imageURL(withDimension: UInt(self.userImage.frame.height))
                    
                    self.downloadableImage = DefaultImageService.sharedImageService.imageFromURL(url!, reachabilityService: reachabilityService)
                }
                
                self.userName.text = gApi.currentUser.profile.name
            }
            
            self.updateUIPresentation(signedIn: signedIn)
            
        }).disposed(by: disposeBag)
        
        
        
        NotificationCenter.default.rx.notification(Notification.Name(rawValue: "ToggleSignOutNotification")).subscribe(
        {_ in
            
            self.updateUIPresentation(signedIn: false)
            
            tokenId = ""
            
            updateBoards()
            updateNotes(withBoardId: lastBoardId)
        
        }).disposed(by: disposeBag)
    }
    
    public func updateUIPresentation(signedIn : Bool)
    {
            userImage.isHidden = !signedIn
            userName.isHidden = !signedIn
        
            gSignInButton.isHidden = signedIn
            sighOutButton.isHidden = !signedIn
    }
    
    @IBAction func sighOut(_ sender: Any)
    {
        
        GIDSignIn.sharedInstance()?.signOut()
        updateUIPresentation(signedIn: false)
    }
}
