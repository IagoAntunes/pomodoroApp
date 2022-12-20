import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hora de Trabalhar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "25:00",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
