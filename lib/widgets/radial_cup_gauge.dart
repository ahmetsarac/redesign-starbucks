import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector_math;

import '../theme/colors.dart';

class RadialCupGauge extends StatelessWidget {
  final int current;
  final int max;
  const RadialCupGauge(this.current, this.max, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final size = constraints.maxHeight * 170 / constraints.maxHeight;
        // 170 / constraints.maxHeight is to make arc size 170 even the constraint size bigger or smaller this solution is only for this design
        //TODO: try to make it more customizable
        return Stack(children: [
          Positioned(
            top: 0,
            child: CustomPaint(
              foregroundPainter: RadialCupGaugePainter(
                  (size) * 4 / 6, // Gauge size
                  (size) * 4 / 6,
                  current,
                  max),
            ),
          ),
          Positioned(
              top: (size) / 5,
              left: (size) / 5,
              child: Image.asset('assets/icons/big_cup.png')),
          Positioned(
            top: (size) * 3 / 4.75,
            // These calculations are for objects' positions to make the look symmetrical
            left: (size) / 3.55,
            child: Text(
              '$current/$max',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ]);
      },
    );
  }
}

class RadialCupGaugePainter extends CustomPainter {
  final double width;
  final double height;
  final int current;
  final int max;

  RadialCupGaugePainter(this.width, this.height, this.current, this.max);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(8, 8, width, height);
    final startAngle = vector_math.radians(120);
    final sweepAngle = vector_math.radians(300);
    const useCenter = false;
    final paint = Paint()
      ..color = PrimaryColors.darkGreen.withAlpha(153)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
    canvas.drawArc(
      rect,
      startAngle,
      vector_math.radians(260 * current / max),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = PrimaryColors.darkGreen
        ..strokeWidth = 13,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
