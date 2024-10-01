//
//  NotificationViewController.swift
//  ImageNotification
//
//  Created by Muhammad Abdulrehman on 28/09/2024.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var imageView: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    func didReceive(_ notification: UNNotification) {
        preferredContentSize.height = 300
        let content = notification.request.content
        if let imageString = content.userInfo["urlImageString"] as? String,
           let imageURL = URL(string: imageString){
            let dataTask = URLSession.shared.dataTask(with: imageURL) { data, response, error in
                guard let data else { return }
                DispatchQueue.main.async {
                    self.imageView?.image = UIImage(data: data)
                }
            }
            dataTask.resume()
        }
        
    }

}
