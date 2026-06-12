import 'package:flutter/material.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_entity.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product, this.onAddToCart});

  final ProductEntity product;
  final VoidCallback? onAddToCart;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.97,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onTapDown(TapDownDetails _) async {
    setState(() => _isPressed = true);
    await _controller.forward();
  }

  Future<void> _onTapUp(TapUpDetails _) async {
    setState(() => _isPressed = false);
    await _controller.reverse();
  }

  Future<void> _onTapCancel() async {
    setState(() => _isPressed = false);
    await _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bool inStock = widget.product.stock > 0;

    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: colorScheme.surface,
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withValues(alpha: 0.06),
                blurRadius: 24,
                spreadRadius: 0,
                offset: const Offset(0, 8),
              ),
              BoxShadow(
                color: colorScheme.shadow.withValues(alpha: 0.04),
                blurRadius: 6,
                spreadRadius: 0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── IMAGE SECTION ─────────────────────────────
                _ImageSection(product: widget.product),

                // ── CONTENT SECTION ─────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 16, 18, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Category pill + stock
                      Row(
                        children: [
                          _CategoryPill(
                            label: widget.product.category,
                            colorScheme: colorScheme,
                          ),
                          const Spacer(),
                          _StockIndicator(
                            inStock: inStock,
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      // Title
                      Text(
                        widget.product.title,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: colorScheme.onSurface,
                          letterSpacing: -0.3,
                          height: 1.25,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      const SizedBox(height: 6),

                      // Description
                      Text(
                        widget.product.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Divider
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: colorScheme.outlineVariant.withValues(
                          alpha: 0.4,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Price + CTA
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                '₹${widget.product.price.toStringAsFixed(0)}',
                                style: textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: colorScheme.onSurface,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              Text(
                                'Free delivery',
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.tertiary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          const Spacer(),

                          _AddToCartButton(
                            onAddToCart: widget.onAddToCart,
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── IMAGE SECTION ─────────────────────────────────────────────

class _ImageSection extends StatelessWidget {
  const _ImageSection({required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        // Image with shimmer placeholder
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            product.thumbnail,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              height: 200,
              color: colorScheme.surfaceContainerHighest,
              child: Icon(
                Icons.image_not_supported_outlined,
                color: colorScheme.onSurfaceVariant,
                size: 48,
              ),
            ),
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return Container(
                height: 200,
                color: colorScheme.surfaceContainerHighest,
              );
            },
          ),
        ),

        // Subtle top gradient scrim for badge legibility
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.35),
                  Colors.black.withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
        ),

        // Discount badge — top left
        Positioned(
          top: 12,
          left: 14,
          child: _DiscountBadge(
            discount: product.discountPercentage,
            colorScheme: colorScheme,
          ),
        ),

        // Rating badge — top right
        Positioned(
          top: 12,
          right: 14,
          child: _RatingBadge(rating: product.rating, colorScheme: colorScheme),
        ),
      ],
    );
  }
}

// ── BADGES ─────────────────────────────────────────────────────

class _DiscountBadge extends StatelessWidget {
  const _DiscountBadge({required this.discount, required this.colorScheme});

  final double discount;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colorScheme.error,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '-${discount.toStringAsFixed(0)}%',
        style: TextStyle(
          color: colorScheme.onError,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

class _RatingBadge extends StatelessWidget {
  const _RatingBadge({required this.rating, required this.colorScheme});

  final double rating;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.4),
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, size: 14, color: colorScheme.secondary),
          const SizedBox(width: 4),
          Text(
            rating.toStringAsFixed(1),
            style: TextStyle(
              color: colorScheme.onSurface,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

// ── CATEGORY PILL ───────────────────────────────────────────────

class _CategoryPill extends StatelessWidget {
  const _CategoryPill({required this.label, required this.colorScheme});

  final String label;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 10,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}

// ── STOCK INDICATOR ─────────────────────────────────────────────

class _StockIndicator extends StatelessWidget {
  const _StockIndicator({
    required this.inStock,
    required this.colorScheme,
    required this.textTheme,
  });

  final bool inStock;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: inStock ? colorScheme.tertiary : colorScheme.error,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          inStock ? 'In Stock' : 'Out of Stock',
          style: textTheme.labelSmall?.copyWith(
            color: inStock ? colorScheme.tertiary : colorScheme.error,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

// ── ADD TO CART BUTTON ──────────────────────────────────────────

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton({
    required this.onAddToCart,
    required this.colorScheme,
    required this.textTheme,
  });

  final VoidCallback? onAddToCart;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onAddToCart,
      style: FilledButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        textStyle: textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w700,
          letterSpacing: 0.2,
        ),
      ),
      icon: const Icon(Icons.shopping_bag_outlined, size: 18),
      label: const Text('Add to Cart'),
    );
  }
}
