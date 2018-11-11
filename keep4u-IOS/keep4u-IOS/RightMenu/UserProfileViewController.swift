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
        
        self.userImage.layer.masksToBounds = true;
        self.userImage.layer.cornerRadius = 80;
        
        GIDSignIn.sharedInstance().uiDelegate = self;
        
        NotificationCenter.default.rx.notification(Notification.Name(rawValue: "ToggleAuthUINotification")).subscribe(
        {_ in
            
            let gApi = GIDSignIn.sharedInstance()!
            
            if (gApi.currentUser.profile.hasImage)
            {
                let reachabilityService = Dependencies.sharedDependencies.reachabilityService
                let url = gApi.currentUser.profile.imageURL(withDimension: UInt(self.userImage.frame.height))
                
                self.downloadableImage = DefaultImageService.sharedImageService.imageFromURL(url!, reachabilityService: reachabilityService)
            }
            
            self.userName.text = gApi.currentUser.profile.name
            
        }).disposed(by: disposeBag)
    }
    
    public func updateUIPresentation()
    {
        
    }
}
