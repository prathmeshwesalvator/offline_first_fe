import 'dart:async';

import 'package:flutter/services.dart';
import 'package:offline_first/app/global/enums/network_enum.dart';

class NetworkManager {
  NetworkManager._();

  static final instance = NetworkManager._();

  static const EventChannel _channel = EventChannel('network_status_stream');

  final _controller = StreamController<NetworkEnum>.broadcast();

  Stream<NetworkEnum> get stream => _controller.stream;

  StreamSubscription? _subscription;

  Future<void> initialize() async {
    _subscription ??= _channel.receiveBroadcastStream().listen((event) {
      if (event == 'connected') {
        _controller.add(NetworkEnum.online);
      } else {
        _controller.add(NetworkEnum.offline);
      }
    });
  }

  Future<void> dispose() async {
    await _subscription?.cancel();
    await _controller.close();
  }
}
