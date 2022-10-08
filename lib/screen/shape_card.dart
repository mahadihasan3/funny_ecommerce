import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shapes/flutter_shapes.dart';

class mycard extends StatefulWidget {
  const mycard({super.key});

  @override
  State<mycard> createState() => _mycardState();
}

class _mycardState extends State<mycard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ClipPath(
        clipper: clip1Clipper(),
        child: Container(
          height: 300,
          width: 300,
          color: Color.fromARGB(82, 40, 9, 180),
        ),
      ),
    ));
  }
}

class clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var controlPoint = Offset(size.width / 2, size.height / 2);
    // var endPoint = Offset(size.width, size.height);
    var controlPoint1 = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // // path.lineTo(size.width, 0);
    // // path.quadraticBezierTo(0, size.height, 0, 0);
    // path.quadraticBezierTo(size.height / 2.0, 0, 0, 0);
    // path.quadraticBezierTo(size.height, 0, 0, 0);
    // path.moveTo(size.width / 2, 0);
    // path.lineTo(0, size.height);
    // // path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(
    //     controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height - 50);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
