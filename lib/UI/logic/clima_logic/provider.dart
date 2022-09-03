import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/clima_logic/notifier.dart';
import 'package:xperiences/UI/logic/clima_logic/state.dart';
import 'package:xperiences/data/repositorio/climaDRepoImpl.dart';
import 'package:xperiences/data/sources/remoto/climaRepoImpl.dart';
import 'package:xperiences/data/sources/remoto/iClimaRepo.dart';
import 'package:xperiences/domain/repositorio/iClimaDRepo.dart';
import 'package:xperiences/domain/useCases/climaCases.dart';

final _climaLocal = Provider<IClimaRepo>((ref) {
  return ClimaRepoImpl();
});

final _climaRepo = Provider<IClimaDRepo>((ref) {
  final repo = ref.watch(_climaLocal);
  return ClimaDRepoImpl(repo);
});

final _getClima = Provider<ObtenerClima>((ref) {
  final repo = ref.watch(_climaRepo);
  return ObtenerClima(repo);
});

final climaNotifier =
    StateNotifierProvider.autoDispose<ClimaNotifier, ClimaState>((ref) {
  final getUC = ref.watch(_getClima);
  return ClimaNotifier(get: getUC);
});
