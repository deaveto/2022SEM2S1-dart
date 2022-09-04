void main() {
  print(obtenerNombre("Diego"));
  print(obtenerNombreApellido("Diego", "Velasquez"));
  print(obtenerNombreApellidoParameter(apellido: "Velasquez"));
  print(miFuncionAnonima("armando"));
}
String obtenerNombre(String valor){
  return 'Mi nombre es $valor';
}
String obtenerNombreApellido(String nombre, String apellido){
  return 'Mi nombre es $nombre $apellido';
}
String obtenerNombreApellidoParameter({String? nombre, required String apellido, int edad = 0}){
  return 'Mi nombre es $nombre $apellido, $edad';
}
// Funciones anonymous functions

var miFuncionAnonima = (String valor){
  return "el valor es $valor";
};
