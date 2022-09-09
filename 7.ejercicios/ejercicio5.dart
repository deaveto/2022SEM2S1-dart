void main() {
  var persona1 = artista();
  persona1.Nombre='Diego Velasquez';
  persona1.Cedula= 1121912520;
  persona1.CatidadCuadros = 2;
  persona1.TipoLapiz='Mirada 2';
  var dato1 = persona1.CatidadCuadros;
  var dato2 = persona1.TipoLapiz;
  print(persona1.caractristica());
  print(persona1.Nombre);
  print(persona1.Cedula);
  print('cantidad de cuadros pintados $dato1');
  print('Tipo de lapiz $dato2');
}
abstract class Persona{
  String? Nombre;
  int? Cedula;
  bool profesion();
}
class artista extends Persona with Dibujar{
  @override
  bool profesion() {
  return true;
  }   
} 
class Ingeniero extends Persona with Dibujar, Leer{
  int curso = 9;
  @override
  bool profesion() {
  return true;
  }
}
class Doctor extends Persona with Leer, Ejercitarse{
  String? especialida;
  @override
  bool profesion() {
  return true;
  }
}
class Atleta extends Persona{
  int estatura = 25;
  int pesoKg = 79;
  @override
  bool profesion() {
  return true;
  }
}
class Boxeador extends Atleta with Ejercitarse, boxear{
  @override
  bool profesion() {
  return true;
  }
}
mixin Dibujar{
  String? TipoLapiz;
  int? CatidadCuadros;
  caractristica(){
    return"Dibujar";
  }
}
mixin Leer{
  String? GeneroLiterario;
  int? CatidadLibrosLeidos;
  caractristica(){
    return"Leer";
  }
}
mixin Ejercitarse{
  String? DondeSeEjercita;
  int? CantidadSemana;
  caractristica(){
    return"Ejercitarse";
  }
}
mixin boxear{
  String? ubicacion;
  int? peso;
  caractristica(){
    return"Boxear";
  }
}
