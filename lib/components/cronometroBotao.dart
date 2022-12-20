import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({
    super.key,
    required this.icon,
    required this.texto,
  });

  final String texto;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
