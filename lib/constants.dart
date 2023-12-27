import 'package:flutter/material.dart';

const kprimarcolor =Color(0xff284461);


void scaffold_massage(BuildContext context,String massage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massage),
      ),
    );
  }
  const kmassagescollactions= "massages";

