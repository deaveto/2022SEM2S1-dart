void main() {
  print("----- Ejercicio 1 -----");
  PromedioListas();
  print("----- Ejercicio 2 -----");
  IntercepcionListas();
  print("----- Ejercicio 3 -----");
  palindromo();
  print("----- Ejercicio 4 -----");
  listaPares();
}
/*
----------------------------------------------ejercicio 1-----------------------------------------------
crear una lista de 6 elementos, en las cuales se recolectaran edades de personas. Como rsultado el programa
mostrara la edad mayor, menor y el promedio de las edades ingresadas. */

  void PromedioListas() {
  List<int> lista = [35,10,57,20,67,78];
  print(lista);
  lista.sort(); // ordenar
  var sum = lista.reduce((a, b) => a + b); //suma de la lista
  print("lista ordenada $lista"); // lista ordenada
  print("Numero mayor de la lista $lista.first"); // numero menor de la lista
  print("Numero menor de la lista $lista.last");// numero mayor de la lista
  print(sum/6); // promedio
}
/*----------------------------------------------ejercicio 2-----------------------------------------------
Tome las lista A=[1,1,2,3,5,8,13,21,34,55,89] Y B=[1,2,3,4,5,6,7,8,9,10,11,12,13] y escriba un programa que devuelva una lista que contenga solo los elementos que son comunes 
entre ellos sin duplicar. Asegurese de que su progrmana dunciones en dos listas de diferentes tamaños*/
void IntercepcionListas() {
  final listA = [
    [1,1,2,3,5,8,13,21,34,55,89],
    [1,2,3,4,5,6,7,8,9,10,11,12,13]
  ];
  final listC = listA.fold<Set>(listA.first.toSet(), (a, b) => a.intersection(b.toSet()));
  print(listC);
}
/*----------------------------------------------ejercicio 3-----------------------------------------------
Validar si una cadena es un palíndromo o no.
*/
void palindromo(){
  String palabra = 'amor a roma';
  var palabraInvertida = StringBuffer();
  print("palindromo");
  
  for(var i= palabra.length - 1;i>=0;i--){
    palabraInvertida.write(String.fromCharCode(palabra.runes.elementAt(i)));
  }
  print(palabraInvertida);
  print(palabra);
  if(palabra == palabraInvertida.toString()){
    print('es palimdromo');
    }
  else{print('no es palindromo');}
}
/*----------------------------------------------ejercicio 4 -----------------------------------------------
Por ejemplo tiene una lista guardada en una variable:
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Escriba un código de Dart que tome esta lista y cree una nueva lista que contenga
solo los elementos pares de esta lista.
*/
void listaPares(){
  List<int> lista = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int?> listaPares =[];
  for(var i=0; i<=lista.length-1; i++){
    int dato = lista[i];
    if(dato%2==0){listaPares.add(dato);}
  }
  print(listaPares);
}

