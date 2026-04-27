import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';

/// Variant C splash: warm green gradient, app-icon card with a slow glow pulse,
/// "Muhasaba" + Arabic مُحَاسَبَة wordmarks. Holds until [settingsProvider]
/// resolves; navigates to `/` when ready, with a 2s ceiling.
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _entranceController;
  late final AnimationController _pulseController;
  late final Animation<double> _iconOpacity;
  late final Animation<double> _iconScale;
  late final Animation<double> _wordmarkOpacity;
  late final Animation<double> _arabicOpacity;
  late final Animation<double> _glowAlpha;

  Timer? _ceilingTimer;
  bool _navigated = false;

  @override
  void initState() {
    super.initState();

    _entranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _iconOpacity = CurvedAnimation(
      parent: _entranceController,
      curve: const Interval(0.0, 0.875, curve: Curves.easeOutCubic),
    );
    _iconScale = Tween<double>(begin: 0.94, end: 1.0).animate(
      CurvedAnimation(
        parent: _entranceController,
        curve: const Interval(0.0, 0.875, curve: Curves.easeOutCubic),
      ),
    );
    _wordmarkOpacity = CurvedAnimation(
      parent: _entranceController,
      curve: const Interval(0.625, 0.975, curve: Curves.easeOut),
    );
    _arabicOpacity = CurvedAnimation(
      parent: _entranceController,
      curve: const Interval(0.775, 1.0, curve: Curves.easeOut),
    );

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    );
    _glowAlpha = Tween<double>(begin: 0.45, end: 0.7).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _entranceController.forward().then((_) {
      if (!mounted) return;
      _pulseController.repeat(reverse: true);
      _maybeNavigate();
    });

    _ceilingTimer = Timer(const Duration(seconds: 2), _navigate);
  }

  void _maybeNavigate() {
    if (_navigated || !mounted) return;
    if (!_entranceController.isCompleted) return;
    if (!ref.read(settingsProvider).hasValue) return;
    _navigate();
  }

  void _navigate() {
    if (_navigated || !mounted) return;
    _navigated = true;
    _ceilingTimer?.cancel();
    context.go('/');
  }

  @override
  void dispose() {
    _ceilingTimer?.cancel();
    _entranceController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(settingsProvider, (prev, next) {
      if (next.hasValue) _maybeNavigate();
    });

    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    final glowColor =
        isDark ? const Color(0xFF7FBE9C) : const Color(0xFF2E7D5B);

    return Scaffold(
      body: AnimatedBuilder(
        animation: Listenable.merge([_entranceController, _pulseController]),
        builder: (context, _) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: isDark
                    ? const [
                        Color(0xFF0E2B20),
                        Color(0xFF163A2D),
                        Color(0xFF1F5740),
                      ]
                    : const [
                        Color(0xFF1F5740),
                        Color(0xFF4F8B6E),
                        Color(0xFFD4E4D8),
                      ],
                stops: const [0.0, 0.55, 1.0],
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: _iconOpacity.value,
                      child: Transform.scale(
                        scale: _iconScale.value,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: glowColor.withValues(
                                  alpha: _glowAlpha.value,
                                ),
                                blurRadius: 36,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: Image.asset(
                              'assets/icon/app_icon.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Opacity(
                      opacity: _wordmarkOpacity.value,
                      child: const Text(
                        'Muhasaba',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xE6FFFFFF),
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Opacity(
                      opacity: _arabicOpacity.value,
                      child: const Text(
                        'مُحَاسَبَة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xB3FFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
