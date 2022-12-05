import UIKit
import Flutter
import Alamofire

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        testNetwork()
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func testNetwork() {
        AF.request("https://jsonplaceholder.typicode.com/albums/1").response { response in
            debugPrint(response)
        }
    }
}
