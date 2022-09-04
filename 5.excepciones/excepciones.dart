void main() {
  try{
    String elNombre = obtnerNombre("Armando");
    print(elNombre);
  } on FormatException catch(e){
    print("se presento una excepción FormatException = $e");
  } catch(e){
    print("se presento una excepción general = $e");
  }
}
String obtnerNombre(String nombre){
  if(nombre == 'Diego'){
    throw FormatException("Este nombre no esta permitido");
  }
    return 'Mi nombre es $nombre';
}
