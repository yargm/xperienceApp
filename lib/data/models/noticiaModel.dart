import 'package:xperiences/domain/entidades/noticia.dart';

class NoticiaModel extends Noticia {
  NoticiaModel(
      {required String imagen,
      required String descripcion,
      required String url,
      required String titulo})
      : super(
            imagen: imagen, descripcion: descripcion, titulo: titulo, url: url);

  factory NoticiaModel.fromJson(Map map) {
    return NoticiaModel(
        descripcion: map["description"],
        imagen:
            "https://previews.123rf.com/images/rastudio/rastudio1708/rastudio170808464/84741468-icono-de-l%C3%ADnea-de-vector-de-noticias-global-aislado-sobre-fondo-blanco-icono-de-l%C3%ADnea-de-noticias-gl.jpg",
        url: map["url"],
        titulo: map["title"]);
  }
}
