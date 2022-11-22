// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

void main() {
  runApp(images());
}


class images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Image.asset('assets/aa4.jpg'),
      ),
    );
  }
}