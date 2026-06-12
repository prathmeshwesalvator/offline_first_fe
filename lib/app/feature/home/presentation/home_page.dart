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
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomePageBloc>().add(LoadAllProducts(limit: 10, skip: 0));
    });

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    const threshold = 200; // px before bottom

    if (currentScroll >= maxScroll - threshold) {
      context.read<HomePageBloc>().add(LoadAllProducts(limit: 10, skip: 10));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      builder: (context, state) {
        final bool isLoading = state.loadProductsStatus == Blocstatus.loading;
        return RefreshIndicator(
          onRefresh: () async {
            context.read<HomePageBloc>().add(
              LoadAllProducts(limit: 10, skip: 0),
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
        if (state.loadProductsStatus == Blocstatus.success) {
          CustomToastMessage(
            message: 'Products Loaded Successfully',
          ).showToast(context);
        }
      },
    );
  }
}
