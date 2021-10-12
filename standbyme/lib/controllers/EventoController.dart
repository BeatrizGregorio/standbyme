import 'package:standbyme_tcc/models/Evento.dart';
import 'package:standbyme_tcc/repositories/EventoRepository.dart';
import 'package:standbyme_tcc/repositories/Interfaces/EventoRepositoryInterface.dart';

class EventoController {
  final IEventoRepository _eventoRepository = EventoRepository();

  Future<Evento> createEvent(Evento evento) async {
    return _eventoRepository.createEvent(evento);
  }

  Future<List<Evento>> findEventsByUser() async {
    return _eventoRepository.findEventsByUser();
  }
}
