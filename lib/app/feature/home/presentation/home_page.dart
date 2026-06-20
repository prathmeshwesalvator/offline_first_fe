import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/dimension_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/meta_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_bloc.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_event.dart';
import 'package:offline_first/app/feature/home/presentation/bloc/home_page_state.dart';
import 'package:offline_first/app/feature/home/presentation/widgets/product_card.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/extensions/duration_extension.dart';
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
  final List<ProductEntity> _dummyProducts = [
    ProductEntity(
      id: 0,
      title: 'Loading...',
      description: 'Loading...',
      price: 0,
      discountPercentage: 0,
      rating: 0,
      stock: 0,
      brand: 'Loading...',
      category: 'Loading...',
      thumbnail: '',
      images: [],
      tags: [],
      sku: '',
      weight: 0,
      dimensions: DimensionEntity(width: 0, height: 0, depth: 0),
      warrantyInformation: '',
      shippingInformation: '',
      availabilityStatus: '',
      reviews: [],
      returnPolicy: '',
      minimumOrderQuantity: 0,
      meta: MetaEntity(
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        barcode: '',
        qrCode: '',
      ),
    ),
  ];

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

    const threshold = 500;
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
        final List<ProductEntity> products = isLoading
            ? List.generate(_limit, (_) => _dummyProducts[0])
            : state.products;
        return RefreshIndicator(
          onRefresh: () async {
            _skip = 0;
            context.read<HomePageBloc>().add(
              LoadAllProducts(limit: _limit, skip: _skip),
            );
          },
          child: Column(
            children: [
              Expanded(
                child: Skeletonizer(
                  enabled: isLoading,
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(4),
                    itemCount:
                        products.length +
                        (state.loadProductsStatus == Blocstatus.loadMore
                            ? 1
                            : 0),
                    itemBuilder: (context, index) {
                      if (index == products.length) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Skeletonizer(
                            child: ProductCard(product: _dummyProducts[0]),
                          ),
                        );
                      }

                      return ProductCard(product: products[index]);
                    },
                  ),
                ),
              ),
              // if (state.loadProductsStatus == Blocstatus.loadMore)
              //   AnimatedSwitcher(
              //     duration: 700.milliseconds,
              //     switchInCurve: Curves.easeIn,
              //     switchOutCurve: Curves.easeOut,
              //     child: Skeletonizer(
              //       child: ProductCard(product: _dummyProducts[0]),
              //     ),
              //   ),
            ],
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
