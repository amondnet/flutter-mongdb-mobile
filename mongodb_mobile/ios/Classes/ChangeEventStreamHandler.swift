
import Flutter

public class ChangeEventStreamHandler: FlutterStreamHandler {
    private var eventSink: FlutterEventSink? = nil
    
    public func onListen(withArguments arguments: Any?,
                         eventSink: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = eventSink
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        NotificationCenter.default.removeObserver(self)
        eventSink = nil
        return nil
    }
    
    public func send (changeEvent: Any?) {
        if ( eventSink != nil ) {
            //eventSink!.success(changeEvent)
        }
    }
    
    public func getEventSink() -> FlutterEventSink? {
        return eventSink
    }
}
