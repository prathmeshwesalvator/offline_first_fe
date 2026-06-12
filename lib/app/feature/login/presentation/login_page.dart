import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_bloc.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_event.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
import 'package:offline_first/app/global/router/app_router.dart';
import 'package:offline_first/app/global/shared_widgets/custom_toast_message.dart';
import 'package:offline_first/app/global/shared_widgets/offline_tool_tip.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    context.read<LoginBloc>().add(
      LoginEvent.submitLogin(
        username: _usernameController.text.trim(),
        password: _passwordController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.loginStatus == Blocstatus.success) {
          CustomToastMessage(
            message: '${state.succesMessage} , Login Successful',
          ).showToast(context);

          Future.delayed(const Duration(milliseconds: 200), () {
            context.router.replaceAll([const CommonScaffoldRoute()]);
          });
        }

        if (state.loginStatus == Blocstatus.failure) {
          CustomToastMessage(
            isError: true,
            message: '${state.errorMessage} , Login Failed',
          ).showToast(context);
        }
      },
      builder: (context, state) {
        final isLoading = state.loginStatus == Blocstatus.loading;

        return Scaffold(
          backgroundColor: colorScheme.surface,
          body: Stack(
            children: [
              SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 480),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // ── Brand mark ──────────────────────────
                          _BrandHeader(
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                          ),

                          const SizedBox(height: 40),

                          // ── Card ─────────────────────────────────
                          Card(
                            elevation: 0,
                            color: colorScheme.surfaceContainerHighest
                                .withOpacity(0.35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: colorScheme.outlineVariant.withOpacity(
                                  0.6,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(28),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Welcome back',
                                    style: textTheme.headlineSmall?.copyWith(
                                      color: colorScheme.onSurface,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Sign in to continue',
                                    style: textTheme.bodyMedium?.copyWith(
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                                  ),

                                  const SizedBox(height: 28),

                                  // ── Username ───────────────────────
                                  TextFormField(
                                    controller: _usernameController,
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    style: textTheme.bodyLarge?.copyWith(
                                      color: colorScheme.onSurface,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: 'Username',
                                      hintText: 'Enter your username',
                                      prefixIcon: Icon(
                                        Icons.person_outline_rounded,
                                        color: colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 16),

                                  // ── Password ───────────────────────
                                  TextFormField(
                                    controller: _passwordController,
                                    obscureText: _obscurePassword,
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (_) =>
                                        isLoading ? null : _submit(context),
                                    style: textTheme.bodyLarge?.copyWith(
                                      color: colorScheme.onSurface,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Enter your password',
                                      prefixIcon: Icon(
                                        Icons.lock_outline_rounded,
                                        color: colorScheme.onSurfaceVariant,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscurePassword
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined,
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                        onPressed: () => setState(
                                          () => _obscurePassword =
                                              !_obscurePassword,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  // ── Forgot password ────────────────
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {
                                        /* TODO: forgot password */
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: colorScheme.primary,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                      ),
                                      child: Text(
                                        'Forgot password?',
                                        style: textTheme.labelMedium?.copyWith(
                                          color: colorScheme.primary,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 24),

                                  // ── Submit button ──────────────────
                                  FilledButton.icon(
                                    onPressed: isLoading
                                        ? null
                                        : () => _submit(context),
                                    style: FilledButton.styleFrom(
                                      backgroundColor: colorScheme.primary,
                                      foregroundColor: colorScheme.onPrimary,
                                      disabledBackgroundColor: colorScheme
                                          .primary
                                          .withOpacity(0.4),
                                      minimumSize: const Size.fromHeight(52),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    icon: isLoading
                                        ? SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: colorScheme.onPrimary,
                                            ),
                                          )
                                        : const Icon(Icons.login_rounded),
                                    label: Text(
                                      isLoading ? 'Signing in…' : 'Sign In',
                                      style: textTheme.labelLarge?.copyWith(
                                        color: colorScheme.onPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // ── Footer ───────────────────────────────
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  /* TODO: navigate to register */
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: colorScheme.primary,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(
                                  'Register',
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const OfflineToolTip(),
            ],
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────
//  Brand header widget
// ─────────────────────────────────────────────
class _BrandHeader extends StatelessWidget {
  const _BrandHeader({required this.colorScheme, required this.textTheme});

  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.lock_rounded,
            size: 32,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Offline First',
          style: textTheme.titleLarge?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
