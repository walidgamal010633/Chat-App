import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class massage_model {
  final String massage;
  final String id;
 final Timestamp time ;
  massage_model( this.massage,  this.id,this.time);

  factory massage_model.fromjason(jasondata) {
    return massage_model( jasondata["massage"],  jasondata["id"],jasondata["time"]
        // time: jasondata["time"],
        );
  }
}
