import 'package:mobx/mobx.dart';

part 'pomodore.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo {
  TRABALHO,
  DESCANSO,
}

abstract class _PomodoroStore with Store {
  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  bool iniciado = false;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.TRABALHO;

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  void decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  void decrementarTempoDescanso() {
    tempoDescanso--;
  }

  @action
  void iniciar() {
    iniciado = true;
  }

  @action
  void parar() {
    iniciado = false;
  }

  @action
  void reiniciar() {
    iniciado = false;
  }

  bool estaTrabalhando() {
    return tipoIntervalo == TipoIntervalo.TRABALHO;
  }

  bool estaDescansando() {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }
}
