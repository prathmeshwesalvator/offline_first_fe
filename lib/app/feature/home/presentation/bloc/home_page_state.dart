import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default('') String succesMessage,
    @Default('') String errorMessage,
    @Default([]) List<ProductEntity> products,
    @Default(Blocstatus.initial) Blocstatus loadProductsStatus,
    @Default(0) int skip,
    @Default(0) int limit,
    @Default(0) int total,
  }) = _HomePageState;
}
