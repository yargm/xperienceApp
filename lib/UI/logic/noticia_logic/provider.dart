import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/noticia_logic/notifier.dart';
import 'package:xperiences/UI/logic/noticia_logic/state.dart';
import 'package:xperiences/data/repositorio/noticiaDRepoImpl.dart';
import 'package:xperiences/data/sources/remoto/iNoticiaRepo.dart';
import 'package:xperiences/data/sources/remoto/noticiaRepoImpl.dart';
import 'package:xperiences/domain/repositorio/iNoticiaDRepo.dart';
import 'package:xperiences/domain/useCases/noticiaCases.dart';

final _noticiaLocal = Provider<INoticiaRepo>((ref) {
  return NoticiaRepoImpl();
});

final _noticiaRepo = Provider<INoticiaDRepo>((ref) {
  final repo = ref.watch(_noticiaLocal);
  return NoticiaDRepoImpl(repo);
});

final _getNoticias = Provider<ObtenerNoticias>((ref) {
  final repo = ref.watch(_noticiaRepo);
  return ObtenerNoticias(repo);
});

final noticiaNotifier =
    StateNotifierProvider.autoDispose<NoticiaNotifier, NoticiaState>((ref) {
  final getUC = ref.watch(_getNoticias);
  return NoticiaNotifier(get: getUC);
});
