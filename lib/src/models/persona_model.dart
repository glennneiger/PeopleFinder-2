import 'dart:typed_data';
import 'dart:convert';

class Persona {
  String nombre;
  String apellido;
  String fecNac;
  Uint8List foto;

  Persona({
    this.nombre,
    this.apellido,
    this.fecNac,
    this.foto,
  });

  Persona.fromJsonMap(Map<String, dynamic> json) {
    nombre = json['entry']['0']['resource']['name']['0']['given']['0'];
    apellido = json['entry']['0']['resource']['name']['0']['family']['0'];
    fecNac = json['entry']['0']['resource']['birthDate'];
    foto = _getFoto(json['entry']['0']['resource']['photo']['0']['data']);
  }

  _getFoto(String _base64) {
    Uint8List bytes = base64Decode(_base64);
    return bytes;
  }
}
