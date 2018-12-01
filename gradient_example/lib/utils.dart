import 'package:flutter/material.dart';

LinearGradient getCustomGradient() {
  return LinearGradient(
    colors: [Colors.pink, Colors.blueAccent],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(2.8, 0.0),
    stops: [0.0, 2.8],
    tileMode: TileMode.clamp
  );
}