import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/feature/home/domain/usecases/get_all_products_usecase.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_event.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({required this.getAllProductsUsecase})
    : super(const HomePageState()) {
    on<LoadAllProducts>(
      (event, emit) async => await _loadAllProducts(emit: emit),
    );
  }

  final GetAllProductsUsecase getAllProductsUsecase;

  Future<void> _loadAllProducts({required Emitter<HomePageState> emit}) async {
    emit(state.copyWith(loadProductsStatus: Blocstatus.loading));

    final response = await getAllProductsUsecase.call();

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
        log('successing ${r.length}');

        emit(
          state.copyWith(loadProductsStatus: Blocstatus.success, products: r),
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
