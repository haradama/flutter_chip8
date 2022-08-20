import 'dart:ui';
import 'dart:typed_data' show Float32List;
import 'package:flutter/material.dart';

class LCDWidget extends StatefulWidget {
  const LCDWidget({Key? key}) : super(key: key);

  @override
  State<LCDWidget> createState() {
    return LCDState();
  }
}

class LCDState extends State<LCDWidget> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double scale = size.height / 32;
    final double width = scale * 64;
    final double height = scale * 32;

    return CustomPaint(
        isComplex: true,
        willChange: true,
        painter: LCDPainter(width, height, scale));
  }
}

class LCDPainter extends CustomPainter {
  LCDPainter(this.width, this.height, this.scale);

  double width, height, scale;

  @override
  void paint(Canvas canvas, Size size) {
    for (int x = 0; x < width; x += scale.toInt()) {
      for (int y = 0; y < height; y += scale.toInt()) {
        Paint color = Paint();
        color.style = PaintingStyle.stroke;
        color.strokeWidth = scale;
        if (x % 2 == 0) {
          color.color = Colors.green;
        }

        List<double> points = [];
        points.add(x.toDouble());
        points.add(y.toDouble());

        canvas.drawRawPoints(
            PointMode.points, Float32List.fromList(points), color);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
