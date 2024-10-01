import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func initnotificaioncenter() {
        let notifications = UNUserNotificationCenter.current()
        notifications.requestAuthorization(options: [.alert,.badge,.sound]) { errSecSuccess, error in
            if errSecSuccess {
                print("Notification Center Authorized")
                notifications.delegate = self
            } else {
                print("Notification Center Authorization Failed")
                
            }
            
//            let actionButton = UNNotificationAction(identifier: "actionButton", title: "Action", options: [.foreground ])
//            let deleteAction = UNNotificationAction(identifier: "deleteAction", title: "Delete", options: [.destructive])
//            
//            let notificationCategory = UNNotificationCategory(identifier: "myNotification Category", actions: [actionButton,deleteAction], intentIdentifiers: [], options: [])
//            notifications.setNotificationCategories([notificationCategory])
        }
    }
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initnotificaioncenter()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {  }


}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound,.list,.badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
//        switch response.actionIdentifier {
//        case "actionButton":
//            print("Open")
//        case "deleteAction ":
//            print("Close")
//        default:
//            print("this is error case")
//        }
        completionHandler()
    }
}
