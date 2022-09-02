import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:xperiences/UI/logic/destino_logic/notifier.dart';
import 'package:xperiences/UI/logic/destino_logic/state.dart';
import 'package:xperiences/data/repositorio/destinoDRepoImpl.dart';
import 'package:xperiences/data/sources/local/destinoRepoImpl.dart';
import 'package:xperiences/data/sources/local/iDestinoRepo.dart';
import 'package:xperiences/domain/repositorio/iDestinoDRepo.dart';
import 'package:xperiences/domain/useCases/destinoCases.dart';

final _destinoLocal = Provider<IDestinoRepo>((ref) {
  return DestinoRepoImpl();
});

final _destinoRepo = Provider<IDestinoDRepo>((ref) {
  final repo = ref.watch(_destinoLocal);
  return DestinoDRepoImpl(repo);
});

final _getDestinos = Provider<ObtenerDestinos>((ref) {
  final repo = ref.watch(_destinoRepo);
  return ObtenerDestinos(repo);
});

final destinoNotifier =
    StateNotifierProvider.autoDispose<DestinoNotifier, DestinoState>((ref) {
  final getUC = ref.watch(_getDestinos);
  return DestinoNotifier(get: getUC);
});
