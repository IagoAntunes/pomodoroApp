import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/pomodore.store.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    super.key,
    required this.value,
    required this.title,
    required this.decrement,
    required this.increment,
  });

  final int value;
  final String title;
  final Function()? increment;
  final Function()? decrement;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Observer(
          builder: (context) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: this.decrement,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      store.estaTrabalhando() ? Colors.red : Colors.green,
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
              ),
              Text(
                "$value min",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: this.increment,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      store.estaTrabalhando() ? Colors.red : Colors.green,
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
