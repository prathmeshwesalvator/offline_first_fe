import 'package:offline_first/app/global/enums/network_enum.dart';

abstract class AppEvent {}

class ChangeAppBarTitle extends AppEvent {
  ChangeAppBarTitle({
    required this.title,
    required this.index,
    required this.subTitle,
  });

  final String title;
  final String index;
  final String subTitle;
}

class StartSessionManagerListening extends AppEvent {}

class SessionExpired extends AppEvent {}

class StartNetworkManagerListening extends AppEvent {}

class NetworkChange extends AppEvent {
  NetworkChange({required this.networkEnum});
  final NetworkEnum networkEnum;
}

class LogOut extends AppEvent {}
