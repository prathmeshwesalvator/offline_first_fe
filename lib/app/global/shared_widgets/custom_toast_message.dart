import 'dart:ui';
import 'package:flutter/material.dart';

class CustomToastMessage {
  CustomToastMessage({required this.message, this.isError = false});

  final String message;
  final bool isError;

  void showToast(BuildContext context) {
    final overlay = Overlay.of(context);

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (_) => _ToastOverlay(
        message: message,
        isError: isError,
        onDismiss: () => entry.remove(),
      ),
    );

    overlay.insert(entry);
  }
}

class _ToastOverlay extends StatefulWidget {
  const _ToastOverlay({
    required this.message,
    required this.isError,
    required this.onDismiss,
  });

  final String message;
  final bool isError;
  final VoidCallback onDismiss;

  @override
  State<_ToastOverlay> createState() => _ToastOverlayState();
}

class _ToastOverlayState extends State<_ToastOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () async {
      if (!mounted) return;

      await _controller.reverse();

      widget.onDismiss();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: FadeTransition(
              opacity: _opacity,
              child: _ToastContainer(
                message: widget.message,
                isError: widget.isError,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ToastContainer extends StatelessWidget {
  const _ToastContainer({required this.message, required this.isError});

  final String message;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white.withOpacity(0.08)),
              gradient: LinearGradient(
                colors: isError
                    ? [const Color(0xff3A1212), const Color(0xff1F0A0A)]
                    : [const Color(0xff1C1C1E), const Color(0xff111113)],
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: -5,
                  offset: const Offset(0, 12),
                  color: Colors.black.withOpacity(0.45),
                ),
              ],
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isError
                        ? Colors.red.withOpacity(0.12)
                        : const Color(0xff0FCE5E).withOpacity(0.12),
                  ),
                  child: Icon(
                    isError ? Icons.close_rounded : Icons.check_rounded,
                    color: isError ? Colors.redAccent : const Color(0xff0FCE5E),
                    size: 24,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Text(
                    message,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                      height: 1.35,
                    ),
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
