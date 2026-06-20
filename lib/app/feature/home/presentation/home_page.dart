import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_bloc.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_event.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_state.dart';
import 'package:offline_first/app/feature/home/presentation/widgets/product_card.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/shared_widgets/custom_toast_message.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  int _skip = 0;
  static const int _limit = 10;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomePageBloc>().add(
        LoadAllProducts(limit: _limit, skip: _skip),
      );
    });

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    const threshold = 200; // px before bottom
    final bloc = context.read<HomePageBloc>();

    final state = bloc.state;

    if (state.loadProductsStatus == Blocstatus.loadMore ||
        state.loadProductsStatus == Blocstatus.loading ||
        state.total <= state.products.length) {
      log('it is returning');
      return;
    }

    if (currentScroll >= maxScroll - threshold) {
      _skip += _limit;
      context.read<HomePageBloc>().add(
        LoadAllProducts(limit: _limit, skip: _skip),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      builder: (context, state) {
        final bool isLoading = state.loadProductsStatus == Blocstatus.loading;
        return RefreshIndicator(
          onRefresh: () async {
            _skip = 0;
            context.read<HomePageBloc>().add(
              LoadAllProducts(limit: _limit, skip: _skip),
            );
          },
          child: Skeletonizer(
            enabled: isLoading,
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(4.0),
              physics: const ClampingScrollPhysics(),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: state.products[index]);
              },
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.loadProductsStatus == Blocstatus.success && state.skip < 0) {
          CustomToastMessage(
            message: 'Products Loaded Successfully',
          ).showToast(context);
        }
      },
    );
  }
}
