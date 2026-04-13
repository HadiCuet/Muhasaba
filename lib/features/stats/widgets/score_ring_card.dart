import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../l10n/app_localizations.dart';

class ScoreRingCard extends StatelessWidget {
  const ScoreRingCard({super.key, required this.snapshot});

  final EnhancedSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final pct = (snapshot.overallRate * 100).round();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 140,
              height: 140,
              child: CustomPaint(
                painter: _RingPainter(
                  rate: snapshot.overallRate.clamp(0.0, 1.0),
                  fillColor: theme.colorScheme.primary,
                  backgroundColor: theme.colorScheme.surfaceContainerHighest,
                ),
                child: Center(
                  child: Text(
                    '$pct%',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _MetricColumn(
                  value: '${snapshot.totalCompleted}',
                  label: l.statsCompleted,
                  color: theme.colorScheme.onSurface,
                ),
                Container(
                  width: 1,
                  height: 32,
                  color: theme.dividerColor,
                ),
                _MetricColumn(
                  value: '${snapshot.totalExpected}',
                  label: l.statsExpected,
                  color: theme.colorScheme.onSurface,
                ),
                if (snapshot.previousPeriodRate != null) ...[
                  Container(
                    width: 1,
                    height: 32,
                    color: theme.dividerColor,
                  ),
                  _VsPrevious(
                    currentRate: snapshot.overallRate,
                    previousRate: snapshot.previousPeriodRate!,
                    label: l.statsVsPrevious,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricColumn extends StatelessWidget {
  const _MetricColumn({
    required this.value,
    required this.label,
    required this.color,
  });

  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _VsPrevious extends StatelessWidget {
  const _VsPrevious({
    required this.currentRate,
    required this.previousRate,
    required this.label,
  });

  final double currentRate;
  final double previousRate;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final diff = ((currentRate - previousRate) * 100).round();
    final isPositive = diff >= 0;
    final diffColor = isPositive
        ? theme.colorScheme.tertiary
        : theme.colorScheme.error;
    final icon = isPositive ? Icons.arrow_upward : Icons.arrow_downward;
    final sign = isPositive ? '+' : '';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: diffColor),
            const SizedBox(width: 2),
            Text(
              '$sign$diff%',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: diffColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.rate,
    required this.fillColor,
    required this.backgroundColor,
  });

  final double rate;
  final Color fillColor;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;
    const strokeWidth = 12.0;

    final bgPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = backgroundColor
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - strokeWidth / 2, bgPaint);

    if (rate > 0) {
      final fillPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..color = fillColor
        ..strokeCap = StrokeCap.round;

      final sweepAngle = 2 * math.pi * rate;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius - strokeWidth / 2),
        -math.pi / 2,
        sweepAngle,
        false,
        fillPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_RingPainter oldDelegate) =>
      rate != oldDelegate.rate ||
      fillColor != oldDelegate.fillColor ||
      backgroundColor != oldDelegate.backgroundColor;
}
