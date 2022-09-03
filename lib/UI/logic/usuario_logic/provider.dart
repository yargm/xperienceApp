import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/usuario_logic/notifier.dart';
import 'package:xperiences/UI/logic/usuario_logic/state.dart';
import 'package:xperiences/data/repositorio/usuarioDRepoImpl.dart';
import 'package:xperiences/data/sources/local/iUsuarioRepo.dart';
import 'package:xperiences/data/sources/local/usuarioRepoImpl.dart';
import 'package:xperiences/domain/repositorio/iUsuarioDRepo.dart';
import 'package:xperiences/domain/useCases/userCases.dart';

final _usuarioLocal = Provider<IUsuarioRepo>((ref) {
  return UsuarioRepoImpl();
});

final _usuarioRepo = Provider<IUsuarioDRepo>((ref) {
  final repo = ref.watch(_usuarioLocal);
  return UsuarioDRepoImpl(repo);
});

final _getUsuario = Provider<ObtenerUsuario>((ref) {
  final repo = ref.watch(_usuarioRepo);
  return ObtenerUsuario(repo);
});

final _deleteData = Provider<BorrarDatos>((ref) {
  final repo = ref.watch(_usuarioRepo);
  return BorrarDatos(repo);
});

final _iniciarSesion = Provider<IniciarSesion>((ref) {
  final repo = ref.watch(_usuarioRepo);
  return IniciarSesion(repo);
});

final usuarioNotifier =
    StateNotifierProvider.autoDispose<UsuarioNotifier, UsuarioState>((ref) {
  final getUsuario = ref.watch(_getUsuario);
  final deleteData = ref.watch(_deleteData);
  final iniciarSesion = ref.watch(_iniciarSesion);
  return UsuarioNotifier(
      getUsuario: getUsuario,
      deleteData: deleteData,
      iniciarSesion: iniciarSesion);
});
