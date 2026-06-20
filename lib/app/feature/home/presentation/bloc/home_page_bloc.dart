import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/home/domain/entities/request/product_request_entity.dart';
import 'package:offline_first/app/feature/home/domain/usecases/get_all_products_usecase.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_event.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({required this.getAllProductsUsecase})
    : super(const HomePageState()) {
    on<LoadAllProducts>(
      (event, emit) async => await _loadAllProducts(emit: emit, event: event),
    );
  }

  final GetAllProductsUsecase getAllProductsUsecase;

  Future<void> _loadAllProducts({
    required Emitter<HomePageState> emit,
    required LoadAllProducts event,
  }) async {
    if (event.skip == 0) {
      emit(state.copyWith(loadProductsStatus: Blocstatus.loading));
    } else {
      emit(state.copyWith(loadProductsStatus: Blocstatus.loadMore));
    }
    final UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel =
        UsecaseRequestModel(
          data: ProductRequestEntity(limit: event.limit, skip: event.skip),
        );

    final response = await getAllProductsUsecase.call(
      usecaseRequestModel: usecaseRequestModel,
    );

    response.fold(
      (l) {
        log('failing ${l.errorMessage}');
        emit(
          state.copyWith(
            loadProductsStatus: Blocstatus.failure,
            errorMessage: l.toString(),
          ),
        );
      },
      (r) {
        log(
          'successing ${r.products.length} && ${event.limit} && ${event.skip}',
        );

        emit(
          state.copyWith(
            loadProductsStatus: Blocstatus.success,
            products: [...state.products, ...r.products],
            total: r.total,
            limit: r.limit,
            skip: r.skip,
          ),
        );
      },
    );

    emit(
      state.copyWith(
        errorMessage: '',
        loadProductsStatus: Blocstatus.initial,
        succesMessage: '',
      ),
    );
  }
}
