import UIKit
import Flutter
import Network

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  private let monitor = NWPathMonitor()

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions
    launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller =
      window?.rootViewController as! FlutterViewController

    let eventChannel = FlutterEventChannel(
      name: "network_status_stream",
      binaryMessenger: controller.binaryMessenger
    )

    eventChannel.setStreamHandler(
      NetworkStreamHandler(monitor: monitor)
    )

    return super.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
  }
}

class NetworkStreamHandler:
  NSObject,
  FlutterStreamHandler {

  private let monitor: NWPathMonitor
  private let queue =
      DispatchQueue(label: "network-monitor")

  init(monitor: NWPathMonitor) {
    self.monitor = monitor
  }

  func onListen(
    withArguments arguments: Any?,
    eventSink events: @escaping FlutterEventSink
  ) -> FlutterError? {

    monitor.pathUpdateHandler = { path in

      if path.status == .satisfied {
        events("connected")
      } else {
        events("disconnected")
      }
    }

    monitor.start(queue: queue)

    return nil
  }

  func onCancel(
    withArguments arguments: Any?
  ) -> FlutterError? {

    monitor.cancel()

    return nil
  }
}