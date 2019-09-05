class Persona {
  String nombre;
  String apellido;
  String fecNac;
  String foto;

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
    foto = json['entry']['0']['resource']['photo']['0']['data'];
  }
}
