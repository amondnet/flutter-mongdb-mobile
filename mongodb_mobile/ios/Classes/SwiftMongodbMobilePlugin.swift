import Flutter
import UIKit
import StitchCore
import MongoSwift

public class SwiftMongodbMobilePlugin: NSObject, FlutterPlugin {
    private lazy var stitchClient = Stitch.defaultAppClient!
    private static var mobileClient: MongoClient?
    private static var eventChannel: FlutterEventChannel?
    private static let mongoChannelEvents = "mongo_change_events"
    private static var changeEventStreamHandler: ChangeEventStreamHandler?
    public static func register(with registrar: FlutterPluginRegistrar) {
      let channel = FlutterMethodChannel(name: "mongodb_mobile", binaryMessenger: registrar.messenger())
      let instance = SwiftMongodbMobilePlugin()
      registrar.addMethodCallDelegate(instance, channel: channel)
      SwiftMongodbMobilePlugin.eventChannel = FlutterEventChannel(name: mongoChannelEvents, binaryMessenger: registrar.messenger())
        
    }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    switch call.method {
    case "query":
        let arguments = call.arguments as! Dictionary<String, Any>;
        
        break
        
    default:
        result(FlutterMethodNotImplemented);
    }
    
    result("iOS " + UIDevice.current.systemVersion)
  }
    
    private func setupAtlasDatabase( result: FlutterResult, appID: String  ) {
        SwiftMongodbMobilePlugin.mobileClient = nil
        // RemoteDBUtil.anonymousAuth( appID, MongoAuthListener);
    }
}
