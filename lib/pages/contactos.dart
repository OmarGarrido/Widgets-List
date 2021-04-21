class Contactos{
  String nombre;
  String telefono;
  String email;

  Contactos({
    this.nombre,
    this.telefono,
    this.email
});

  factory Contactos.fromJson(Map<String, dynamic> parsedJson){
    return Contactos(
      nombre: parsedJson['name'],
      telefono : parsedJson['tel'],
      email : parsedJson ['email']
    );
  }
}