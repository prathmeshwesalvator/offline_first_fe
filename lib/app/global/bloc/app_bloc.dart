import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/core/managers/network_manager.dart';
import 'package:offline_first/app/core/managers/session_manager.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/global/bloc/app_event.dart';
import 'package:offline_first/app/global/bloc/app_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/enums/network_enum.dart';
import 'package:offline_first/app/global/enums/sesssion_event_enum.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required this.appSharedPreferences}) : super(const AppState()) {
    on<ChangeAppBarTitle>(
      (event, emit) => _changeAppBarTitle(emit: emit, event: event),
    );

    on<StartSessionManagerListening>(
      (event, emit) => _startSessionManagerListening(),
    );
    on<SessionExpired>((event, emit) => __sessionExpired(emit: emit));
    on<StartNetworkManagerListening>(
      (event, emit) => _startNetworkManagerListening(emit: emit),
    );
    on<NetworkChange>(
      (event, emit) =>
          _networkChange(emit: emit, networkStatus: event.networkEnum),
    );
    on<LogOut>((event, emit) => _logOut(emit: emit));
  }

  final AppSharedPreferences appSharedPreferences;

  StreamSubscription? _sessionManagerStreamSubscription;
  StreamSubscription? _networkManagerStreamSubscription;

  Future<void> _startSessionManagerListening() async {
    _sessionManagerStreamSubscription = SessionManager.instance.stream.listen((
      event,
    ) {
      if (event == SesssionEventEnum.unauthorized) {
        add(SessionExpired());
      }
    });
  }

  Future<void> _logOut({required Emitter<AppState> emit}) async {
    emit(state.copyWith(logOutStatus: Blocstatus.loading));

    await appSharedPreferences.clearStorage();

    emit(state.copyWith(logOutStatus: Blocstatus.success));
  }

  Future<void> __sessionExpired({required Emitter<AppState> emit}) async {
    emit(state.copyWith(sessionManager: SesssionEventEnum.unauthorized));
  }

  Future<void> _startNetworkManagerListening({
    required Emitter<AppState> emit,
  }) async {
    await NetworkManager.instance.initialize();
    NetworkManager.instance.stream.listen((event) {
      if (event == NetworkEnum.online) {
        add(NetworkChange(networkEnum: NetworkEnum.online));
      } else {
        add(NetworkChange(networkEnum: NetworkEnum.offline));
      }
    });
  }

  Future<void> _networkChange({
    required NetworkEnum networkStatus,
    required Emitter<AppState> emit,
  }) async {
    emit(state.copyWith(networkStatus: networkStatus));
  }

  Future<void> _changeAppBarTitle({
    required Emitter<AppState> emit,
    required ChangeAppBarTitle event,
  }) async {
    emit(
      state.copyWith(appBarTitle: event.title, appBarSubTitle: event.subTitle),
    );
  }
}
