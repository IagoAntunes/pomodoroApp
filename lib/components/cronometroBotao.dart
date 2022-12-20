import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodore.store.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({
    super.key,
    required this.icon,
    required this.texto,
    required this.click,
  });

  final String texto;
  final IconData icon;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        textStyle: TextStyle(fontSize: 16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              icon,
              size: 20,
            ),
          ),
          Text(
            texto,
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
