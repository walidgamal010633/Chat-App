import 'package:flutter/material.dart';

class massage_model {
  final String massage;
  // final DateTime time;
  massage_model({required this.massage,
  //  required this.time
   });

  factory massage_model.fromjason(jasondata) {
    return massage_model(
      massage: jasondata["massage"],
      // time: jasondata["time"],
    );
  }
}
