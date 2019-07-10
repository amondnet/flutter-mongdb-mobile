
import Flutter

public class ChangeEventStreamHandler: FlutterStreamHandler {
    private var eventSink: FlutterEventSink? = nil
    
    public func onListen(withArguments arguments: Any?,
                         eventSink: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = eventSink
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
    
    public func send (changeEvent: Any?) {
        if ( eventSink != nil ) {
            eventSink!(changeEvent)
        } else {
            // _eventSink(FlutterError.init());
        }
    }
    
    public func getEventSink() -> FlutterEventSink? {
        return eventSink
    }
}
