import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/enums/network_enum.dart';
import 'package:offline_first/app/global/enums/sesssion_event_enum.dart';
part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(NetworkEnum.initial) NetworkEnum networkStatus,
    @Default('') String appBarTitle,
    @Default('') String appBarSubTitle,
    @Default(Blocstatus.initial) Blocstatus logOutStatus,
    @Default(SesssionEventEnum.initial) SesssionEventEnum sessionManager,
  }) = _AppState;
}
