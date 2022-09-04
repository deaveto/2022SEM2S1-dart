void main() {
  Persona objetoPersona =Persona(nombre:"Diego", apellido:"Velasquz", edad:28);
  Padre objetoPadre = Padre(2);

  var objetoTaxi =Taxi();
  objetoTaxi.placa="123";
  print(objetoTaxi.tipoVehiculo());
  print(objetoTaxi.placa);
  if(objetoTaxi is Taxi){
    print("Si es de tipo taxi");
  }else{
    print("No es de tipo taxi");
  }

  print(objetoPadre.apellido);
}
class Persona{
  String? nombre;
  String? apellido;
  int? edad;
  Persona({required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre);
}
class Padre extends Persona{
  int hijos;

  //Padre(this.hijos):super(nombre:"Diego", apellido:"Velasquez", edad:28);
  Padre(this.hijos):super.completo("Velasquez");
}
abstract class Vehiculo{
  late String placa;
  bool vehiculoEncendido();  
}
class Taxi extends Vehiculo with Terrestre, Acuatico{
  @override
  bool vehiculoEncendido() {
  return true;
  }  
}
mixin Terrestre{
  int? llantas;
  int? kilometraje;
  tipoVehiculo(){
    return"Terrestre";
  }
}
mixin Acuatico{
  int? motores;
  tipoVehiculo(){
    return "Acuatico";
  }
}
