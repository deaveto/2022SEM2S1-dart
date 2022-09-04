void main() {
  print("----- Ejercicio 1 -----");
  PromedioListas();
  print("----- Ejercicio 2 -----");
  IntercepcionListas();
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

/*----------------------------------------------ejercicio 1-----------------------------------------------
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
