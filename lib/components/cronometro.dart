import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pomodoro/components/cronometroBotao.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CronometroBotao(
                  icon: Icons.play_arrow,
                  texto: 'Iniciar',
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(2),
              //   child: CronometroBotao(
              //     icon: Icons.stop,
              //     texto: 'Parar',
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: CronometroBotao(
                  icon: Icons.refresh,
                  texto: 'Reiniciar',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
