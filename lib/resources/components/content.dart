import 'package:flutter/widgets.dart';

class Content extends StatelessWidget {
  String data;
  double size;
  Color? color;
  int? maxline;
  FontWeight? weight;
  TextAlign? alignment;

  Content(
      {required this.data,
      required this.size,
      this.color,
      this.weight,
      this.maxline = 50,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: alignment,
      maxLines: maxline,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
          overflow: TextOverflow.ellipsis),
    );
  }
}
