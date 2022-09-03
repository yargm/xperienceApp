import 'package:equatable/equatable.dart';

class Noticia extends Equatable {
  String imagen;
  String titulo;
  String descripcion;
  String url;

  Noticia({
    required this.imagen,
    required this.descripcion,
    required this.titulo,
    required this.url,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [imagen, titulo, descripcion, url];
}
