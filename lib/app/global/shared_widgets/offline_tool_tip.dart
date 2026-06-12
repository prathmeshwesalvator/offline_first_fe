import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/global/bloc/app_bloc.dart';
import 'package:offline_first/app/global/bloc/app_state.dart';
import 'package:offline_first/app/global/enums/network_enum.dart';

class OfflineToolTip extends StatelessWidget {
  const OfflineToolTip({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final isOffline = state.networkStatus == NetworkEnum.offline;
        return Positioned(
          left: 16,
          right: 16,
          bottom: 20,
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            offset: isOffline ? Offset.zero : const Offset(0, 2),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isOffline ? 1 : 0,
              child: IgnorePointer(
                ignoring: !isOffline,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.error.withOpacity(0.2),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.wifi_off_rounded,
                        color: colorScheme.onErrorContainer,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'No Internet Connection',
                        style: textTheme.labelMedium?.copyWith(
                          color: colorScheme.onErrorContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
