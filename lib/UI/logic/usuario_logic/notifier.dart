import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/usuario_logic/state.dart';
import 'package:xperiences/domain/useCases/userCases.dart';

class UsuarioNotifier extends StateNotifier<UsuarioState> {
  UsuarioNotifier({
    required ObtenerUsuario getUsuario,
    required BorrarDatos deleteData,
    required IniciarSesion iniciarSesion,
  })  : _iniciarSesion = iniciarSesion,
        _getUsuario = getUsuario,
        _deleteData = deleteData,
        super(const UsuarioState.initial());

  final ObtenerUsuario _getUsuario;
  final BorrarDatos _deleteData;
  final IniciarSesion _iniciarSesion;

  Future<void> iniciarSesion(String correo, String contrasena) async {
    state = const UsuarioState.loading();
    try {
      final result = await _iniciarSesion.call(correo, contrasena);
      state = UsuarioState.data(result: result);
    } catch (e) {
      state = UsuarioState.error(e.toString());
    }
  }

  Future<void> borrarDatos() async {
    state = const UsuarioState.loading();
    try {
      final result = await _deleteData.call();
      state = UsuarioState.data(result: result);
    } catch (e) {
      state = UsuarioState.error(e.toString());
    }
  }

  Future<void> obtenerUsuario() async {
    state = const UsuarioState.loading();
    try {
      final result = await _getUsuario.call();
      state = UsuarioState.data(result: result);
    } catch (e) {
      state = UsuarioState.error(e.toString());
    }
  }
}
