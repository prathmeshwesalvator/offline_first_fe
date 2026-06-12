import 'dart:async';

import 'package:offline_first/app/global/enums/sesssion_event_enum.dart';

class SessionManager {
  SessionManager._();

  static final SessionManager instance = SessionManager._();

  final _controller = StreamController<SesssionEventEnum>.broadcast();

  Stream<SesssionEventEnum> get stream => _controller.stream;

  void unauthorized() {
    _controller.add(SesssionEventEnum.unauthorized);
  }

  Future<void> dispose() async {
    await _controller.close();
  }
}
